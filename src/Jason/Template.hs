{-# LANGUAGE OverloadedStrings #-}

module Jason.Template
  (
    var
  , each
  , if_
  , elseif_
  , else_
  , this
  ) where

import           Data.Text      (Text, append, concat)
import           Jason.Core
import           Jason.Internal
import           Prelude        hiding (concat)

var :: Text -> Text
var t = concat ["{{", t, "}}"]

each :: Text -> Jason -> Jason
each v = parent (var $ "#each" `append` v)

if_ :: Text -> Jason -> Jason
if_ v = parent (var $ "#if (" `append` v `append` ")")

elseif_ :: Text -> Jason -> Jason
elseif_ v = parent (var $ "#elseif (" `append` v `append` ")")

else_ :: Text -> Jason -> Jason
else_ v = parent (var $ "#else (" `append` v `append` ")")

this :: Jason
this = text $ var "this"

get :: Text -> Jason
get t = text $ var ("$get." `append` t)

cache :: Text -> Jason
cache t = text $ var ("$cache." `append` t)
