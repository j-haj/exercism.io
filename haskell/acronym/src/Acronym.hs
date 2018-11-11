
module Acronym (abbreviate) where
import Data.Char (isUpper,toUpper)
import Data.List.Split

abbreviate :: String -> String
abbreviate xs = let isDelim x = isUpper x || (elem x " -"); isSpaceDash x = (elem x " -") in
  map (toUpper . head . filter (\x -> not (elem x " -")))
  $ filter (not . isSpaceDash) $ filter (not . null) $ split (keepDelimsL $ whenElt (\x -> isDelim x)) xs
