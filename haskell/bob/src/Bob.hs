module Bob (responseFor) where
import Data.Char (isUpper, isLetter, isSpace)
import Data.String.Utils 

isQuestion :: String -> Bool
isQuestion s = '?' == (last . strip) s

isYelled :: String -> Bool
isYelled s = let normS = filter (isLetter) s in
  length normS == (length $ filter (isUpper) normS) && length normS > 0

responseFor :: String -> String
responseFor xs
  | null $ filter (not . isSpace) xs = "Fine. Be that way!"
  | isQuestion xs && isYelled xs = "Calm down, I know what I'm doing!"
  | isQuestion xs = "Sure."
  | isYelled xs = "Whoa, chill out!"
  | otherwise = "Whatever."
