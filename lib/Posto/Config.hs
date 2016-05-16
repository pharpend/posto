-- |The configuration to be read from the YAML file.
module Posto.Config where

import           Data.Aeson
import           Data.ByteString (ByteString)
import qualified Data.ByteString as B
import           Data.HashMap.Lazy (HashMap)
import           Data.Text (Text)
import           Data.Vector (Vector)
import qualified Data.Yaml as Y
import           GHC.Generics
import           System.IO (stdout)

data Config = Config { configMailboxes :: Vector Mailbox
                     , configKeys :: KeysConfig
                     }
  deriving (Eq, Show, Generic)

instance ToJSON Config
instance FromJSON Config

-- |Newtype over '()' for now.
newtype Mailbox = Mailbox { unMailbox :: () }
  deriving (Eq, Show, Generic)

instance ToJSON Mailbox
instance FromJSON Mailbox

-- |Eventually, this will be a newtype over @'HashMap' Key
-- 'Action'@. However, not now, because this project is still in its
-- infancy.
newtype KeysConfig = KeysConfig { unKeysConfig :: HashMap Text Action }
  deriving (Eq, Show, Generic)

instance ToJSON KeysConfig
instance FromJSON KeysConfig

data Action = Quit
            | Parent
            | Documentation
            | Menu
            | Move Movement
            | NewMessage
            | ReplyToMessage
            | Copy
            | Synchronize
            | SortCurrentColumn
            | Rename
            | Mark
  deriving (Eq, Show, Generic)

instance ToJSON Action
instance FromJSON Action

data Movement = ColumnLeft
              | ColumnRight
              | RowDown
              | RowUp
  deriving (Eq, Show, Generic)

instance ToJSON Movement
instance FromJSON Movement

-- |Render a 'Config' into a 'ByteString' using YAML. This is an alias
-- for 'Y.encode'.
prettyConfig :: Config -> ByteString
prettyConfig = Y.encode

-- |Print a config to stdout.
printConfig :: Config -> IO ()
printConfig = B.hPut stdout . prettyConfig
