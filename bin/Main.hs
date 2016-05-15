module Main where

import qualified Data.ByteString as B
import           Data.FileEmbed
import qualified Data.Text.IO as T
import           Options.Applicative
import           Options.Applicative.Helper
import           Options.Applicative.Simple
import qualified Paths_posto as P
import           System.IO

-- |Possible commands we can run
data Command = Version
             | License
             | Run
  deriving (Eq, Show)

main :: IO ()
main =
  do result <- helperExecParser myParser myInfo
     case result of
       Version -> putStrLn $(simpleVersion P.version)
       License -> B.hPut stdout $(embedFile "LICENSE")
       Run -> T.putStrLn "run"
  where myInfo = fpDesc "Console-based-mail client"
        myParser = altconcat [ versionCmd
                             , licenseCmd
                             , pure Run
                             ]

-- |The @posto --version@ command.
versionCmd :: Parser Command
versionCmd =
  flag' Version
        (mconcat [ help "Show the version"
                 , long "version"
                 ])

-- |The @posto --license@ command.
licenseCmd :: Parser Command
licenseCmd =
  flag' License
        (mconcat [ help "Show the license (ISC)"
                 , long "license"
                 ])
