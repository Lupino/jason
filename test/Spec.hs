{-# LANGUAGE OverloadedStrings #-}
import           Data.Aeson                 (encode, toEncoding)
import qualified Data.ByteString.Lazy.Char8 as B
import           Data.Text                  (Text)
import           Jason

main :: IO ()
main = do
  let v = renderJasonM True $ do
            arrayParent "aa" $ do
              "cc"
              "dd"
              leaf $ do
                parent "ee" "ff"
                parent "gg" "hh"
              label "cckk" mempty
              label "cckk" $ do
                font "cc"
                size "100"

  B.putStrLn $ encode v
