module Main where

import           Data.Aeson
import           Data.Text (Text)
import qualified Data.Text as T
import           GHC.Generics
import           System.Console.Haskeline

data GmailCfg =
  GmailCfg { username :: Text
           , passfile :: FilePath
           }
  deriving (Show, Generic)
instance FromJSON Person
instance ToJSON Person where
    toEncoding = genericToEncoding defaultOptions

main :: IO ()
main = do (uname,pfile) <- runInputT defaultSettings getData
          print $ GmailCfg uname pfile
  where getData :: IO (String, String)
        getData = do uname <- getInputLine "username: "
                     pfile <- getInputLine "passfile: "
                     return (uname, pfile)
