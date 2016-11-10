{-# LANGUAGE OverloadedStrings #-}
import           Data.Aeson                 (encode, toEncoding)
import qualified Data.ByteString.Lazy.Char8 as B
import           Data.Text                  (Text)
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
      styleRow "styled_row" $ do
        font "HelveticaNeue"
        size "20"
        color "#ff0000"
        padding "10"
  body $
    sections $ do
      items $ do
        label "This is row 1" $ class_ "styled_row"
        label "This is row 2" $ class_ "styled_row"
        label "This is row 3" $ class_ "styled_row"
