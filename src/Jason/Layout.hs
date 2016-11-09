{-# LANGUAGE OverloadedStrings #-}

module Jason.Layout
  (
    layout
  , vertical
  , horizontal
  ) where

import           Data.Text      (Text)
import           Jason.Core
import           Jason.Internal

-- layout layout components style
layout :: Text -> Jason -> Jason -> Jason
layout t c s = leaf $ do
  type_ $ text t
  components c
  style ? s

vertical :: Jason -> Jason -> Jason
vertical = layout "vertical"

horizontal :: Jason -> Jason -> Jason
horizontal = layout "horizontal"
