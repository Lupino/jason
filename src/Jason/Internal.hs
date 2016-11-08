{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE ExistentialQuantification  #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings          #-}
module Jason.Internal
  (
    JasonM (..)
  , Jason
  , raw
  , text
  , parent
  , arrayParent
  , leaf
  , arrayLeaf
  , isEmpty
  , renderJasonM
  ) where

import           Data.Text           (Text)

import           Control.Applicative (Applicative (..))
import           Data.Monoid         (Monoid, mappend, mconcat, mempty)
import           Data.Typeable       (Typeable)
import           Unsafe.Coerce       (unsafeCoerce)

import           Data.Aeson          (Value (..), object, toJSON, (.=))
import           Data.HashMap.Strict (union)
import           Data.String         (IsString (..))
import           Data.Vector         as V (cons, empty, snoc, (++))

data JasonM a = forall b. Parent Text (JasonM b)
              | forall b. ArrayParent Text (JasonM b)
              | forall b c. Append (JasonM b) (JasonM c)
              | Leaf (JasonM a)
              | ArrayLeaf (JasonM a)
              | Content Text
              | Raw Value
              | Empty
              deriving (Typeable)

-- | Simplification of the 'JasonM' datatype.
--
type Jason = JasonM ()

instance Monoid a => Monoid (JasonM a) where
  mempty = Empty
  {-# INLINE mempty #-}
  mappend x y = Append x y
  {-# INLINE mappend #-}
  mconcat = foldr Append Empty
  {-# INLINE mconcat #-}


instance Functor JasonM where
  -- Safe because it does not contain a value anyway
  fmap _ = unsafeCoerce

instance Applicative JasonM where
  pure _ = Empty
  {-# INLINE pure #-}
  (<*>) = Append
  {-# INLINE (<*>) #-}
  (*>) = Append
  {-# INLINE (*>) #-}
  (<*) = Append
  {-# INLINE (<*) #-}


instance Monad JasonM where
  return _ = Empty
  {-# INLINE return #-}
  (>>) = Append
  {-# INLINE (>>) #-}
  h1 >>= f = h1 >> f
      (error "Jason.JasonM: invalid use of monadic bind")
  {-# INLINE (>>=) #-}

instance IsString (JasonM a) where
    fromString = Content . fromString
    {-# INLINE fromString #-}

raw :: Value -> JasonM a
raw = Raw

text :: Text -> JasonM a
text = Content

parent :: Text -> JasonM a -> JasonM a
parent = Parent

arrayParent :: Text -> JasonM a -> JasonM a
arrayParent = ArrayParent

leaf :: JasonM a -> JasonM a
leaf = Leaf

arrayLeaf :: JasonM a -> JasonM a
arrayLeaf = ArrayLeaf

isEmpty :: JasonM a -> Bool
isEmpty Empty = True
isEmpty _     = False

unionValue :: Value -> Value -> Value
unionValue (Object a) (Object b) = Object $ union a b
unionValue (Object a) _          = Object a
unionValue _          (Object b) = Object b
unionValue _ _                   = Null

unionArray :: Value -> Value -> Value
unionArray (Array a1) (Array a2) = Array $ a1 V.++ a2
unionArray (Array a1) a2         = Array $ a1 `snoc` a2
unionArray a1         (Array a2) = Array $ a1 `cons` a2
unionArray Null       a2         = Array $ empty `snoc` a2
unionArray a1         Null       = Array $ empty `snoc` a1
unionArray a1         a2         = Array $ empty `snoc` a1 `snoc` a2

renderJasonM :: Bool -> JasonM a -> Value
renderJasonM _   (Parent t c)      = object [ t .= renderJasonM False c ]
renderJasonM _   (ArrayParent t c) = object [ t .= renderJasonM True c ]
renderJasonM arr (Append c1 c2)    = union' (renderJasonM arr c1) (renderJasonM arr c2)
  where union' = if arr then unionArray else unionValue

renderJasonM _   (Leaf c)          = renderJasonM False c
renderJasonM _   (ArrayLeaf c)     = renderJasonM True c
renderJasonM _   (Content c)       = toJSON c
renderJasonM _   (Raw c)           = c
renderJasonM _   Empty           = Null
