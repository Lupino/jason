{-# LANGUAGE OverloadedStrings #-}

module Jason.Component
  (
    label
  , image_
  , button
  , textfield
  , textarea
  , slider
  , html
  , space
  , map_
  ) where

import           Data.Text      (Text)
import           Jason.Core
import           Jason.Internal

label :: Text -> Jason -> Jason
label txt sty = leaf $ do
  type_ "label"
  text_ $ text txt
  style ? sty

image_ :: Text -> Jason -> Jason
image_ txt sty = leaf $ do
  type_ "image"
  text_ $ text txt
  style ? sty

button :: Text -> Jason -> Jason
button txt sty = leaf $ do
  type_ "button"
  text_ $ text txt
  style ? sty

-- textfield name    value placeholder style
textfield :: Text -> Jason -> Jason -> Jason -> Jason
textfield n v p sty = leaf $ do
  type_ "textfield"
  name $ text n
  value ? v
  placeholder ? p
  style ? sty

-- textarea name    value placeholder style
textarea :: Text -> Jason -> Jason -> Jason -> Jason
textarea n v p sty = leaf $ do
  type_ "textarea"
  name $ text n
  value ? v
  placeholder ? p
  style ? sty

-- slider name    value    action   style
slider :: Text -> Jason -> Jason -> Jason -> Jason
slider n v a sty = leaf $ do
  type_ "slider"
  name $ text n
  value ? v
  action ? a
  style ? sty

-- html text css
html :: Text -> Jason -> Jason
html t c = leaf $ do
  type_ "html"
  text_ $ text t
  css ? c

-- space style
space :: Jason -> Jason
space sty = leaf $ do
  type_ "space"
  style ? sty

-- map region pins style
map_ :: Jason -> Jason -> Jason -> Jason
map_ r p s = leaf $ do
  type_ "map"
  region r
  pins ? p
  style ? s
