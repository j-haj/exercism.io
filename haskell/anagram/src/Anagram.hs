module Anagram (anagramsFor) where
import Data.Char (toLower)
import Data.Map (Map)
import qualified Data.Map as Map

isAnagramWithFrequencies :: String -> Map Char Integer -> Bool
s `isAnagramWithFrequencies` f = (Map.fromListWith (+) [(toLower c, 1) | c <- s]) == f

anagramsFor :: String -> [String] -> [String]
anagramsFor xs xss = filter isAnagram xss
  where f = Map.fromListWith (+) [(toLower c, 1) | c <- xs]
        isAnagram s = s `isAnagramWithFrequencies` f && lowercase s /= lowercase xs
        lowercase s = [toLower c | c <- s]
