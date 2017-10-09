{-# LANGUAGE DeriveGeneric #-}

module Models.Chapter where

import           BasicPrelude
import           Data.Aeson   (ToJSON)
import           GHC.Generics (Generic)

import           Models.SubChapter


data Chapter =
  Chapter {
    name   ∷ Text,
    chapterNumber ∷ Text,
    chapterUrl    ∷ Text,
    subChapters   ∷ [SubChapter]
} deriving (Generic, Show)

instance ToJSON Chapter
