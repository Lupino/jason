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

-- layout layout components extra
layout :: Text -> Jason -> Jason
layout t extra = leaf $ do
  type_ $ text t
  extra

vertical :: Jason -> Jason
vertical = layout "vertical"

horizontal :: Jason -> Jason
horizontal = layout "horizontal"
