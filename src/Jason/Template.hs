{-# LANGUAGE OverloadedStrings #-}

module Jason.Template
  (
    var
  , each
  , if_
  , elseif_
  , else_
  , this
  , get
  , cache
  ) where

import           Data.Text      (Text, append, concat)
import           Jason.Core
import           Jason.Internal
import           Prelude        hiding (concat)

var :: Text -> Text
var t = concat ["{{", t, "}}"]

each :: Text -> Jason -> Jason
each v = parent (var $ "#each " `append` v)

if_ :: Text -> Jason -> Jason
if_ v = parent (var $ "#if (" `append` v `append` ")")

elseif_ :: Text -> Jason -> Jason
elseif_ v = parent (var $ "#elseif (" `append` v `append` ")")

else_ :: Jason -> Jason
else_ = parent (var "#else")

this :: Text
this = var "this"

get :: Text -> Text
get t = var ("$get." `append` t)

cache :: Text -> Text
cache t = var ("$cache." `append` t)
