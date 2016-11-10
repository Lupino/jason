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

-- label label extra
label :: Text -> Jason -> Jason
label txt extra = leaf $ do
  type_ "label"
  text_ $ text txt
  extra

-- image_ url     extra
image_ :: Text -> Jason -> Jason
image_ txt extra = leaf $ do
  type_ "image"
  text_ $ text txt
  extra

-- button name    extra
button :: Text -> Jason -> Jason
button txt extra = leaf $ do
  type_ "button"
  text_ $ text txt
  extra

-- textfield name    value placeholder extra
textfield :: Text -> Jason -> Jason -> Jason -> Jason
textfield n v p extra = leaf $ do
  type_ "textfield"
  name $ text n
  value ? v
  placeholder ? p
  extra

-- textarea name    value placeholder extra
textarea :: Text -> Jason -> Jason -> Jason -> Jason
textarea n v p extra = leaf $ do
  type_ "textarea"
  name $ text n
  value ? v
  placeholder ? p
  extra

-- slider name    value    action   extra
slider :: Text -> Jason -> Jason -> Jason -> Jason
slider n v a extra = leaf $ do
  type_ "slider"
  name $ text n
  value ? v
  action ? a
  extra

-- html text css
html :: Text -> Jason -> Jason
html t c = leaf $ do
  type_ "html"
  text_ $ text t
  css ? c

-- space extra
space :: Jason -> Jason
space extra = leaf $ do
  type_ "space"
  extra

-- map region pins extra
map_ :: Jason -> Jason -> Jason -> Jason
map_ r p extra = leaf $ do
  type_ "map"
  region r
  pins ? p
  extra
