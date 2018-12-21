module Pangram (isPangram) where

import Data.Char (isLetter, toLower)
import qualified Data.Set as Set

isPangram :: String -> Bool
isPangram text = uniqueLetters text == 26
  where uniqueLetters s =
          length $ Set.fromList $ filter (isLetter) $ fmap (toLower) s
