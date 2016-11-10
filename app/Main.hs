{-# LANGUAGE OverloadedStrings #-}
module Main where

import           Data.Aeson                 (encode)
import qualified Data.ByteString.Lazy.Char8 as B
import           Jason
import           Prelude                    hiding (head)

main :: IO ()
main = B.putStrLn . encode $ renderJason app

app :: Jason
app = jason $ do
  head $ do
    title "Hello World"
    description "This app displays 'Hello World' on the screen"
    styles $
      "styled_row" .== do
        font "HelveticaNeue"
        size "20"
        color "#ff0000"
        padding "10"
  body $
    sections $
      items $ do
        vertical $
          components $ do
            label "This is row 1" $ class_ "styled_row"
            label "This is row 2" $ class_ "styled_row"
            label "This is row 3" $ class_ "styled_row"
        horizontal $
          components $ do
            button "Button 1" $ class_ "styled_row"
            button "Button 2" $ class_ "styled_row"
            button "Button 3" $ do
              class_ "styled_row"
              action $ do
                type_ "$util.banner"
                options $ do
                  title "Hello"
                  description "World"
