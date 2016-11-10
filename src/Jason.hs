{-# LANGUAGE OverloadedStrings #-}
module Jason
  (
    module X
  , renderJason
  ) where

import           Data.Aeson      (Value (..))
import           Jason.Component as X
import           Jason.Core      as X
import           Jason.Internal  as X
import           Jason.Layout    as X
import           Jason.Template  as X

renderJason :: Jason -> Value
renderJason = renderJasonM False
