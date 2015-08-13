module Site.Configuration (config, feedConfig) where

import Hakyll

ignoreFile' :: String -> Bool
ignoreFile' ".htaccess" = False
ignoreFile' path        = ignoreFile defaultConfiguration path

config :: Configuration
config = defaultConfiguration { ignoreFile = ignoreFile' }

-- Details for the atom feed.
feedConfig :: FeedConfiguration
feedConfig = FeedConfiguration
  { feedTitle       = "Nekoboard"
  , feedDescription = "Nekoboard’s blog"
  , feedAuthorName  = "Nekoboard"
  , feedAuthorEmail = ""
  , feedRoot        = "nekoboard.github.io"
  }
