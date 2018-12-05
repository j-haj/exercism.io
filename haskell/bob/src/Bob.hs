module Bob (responseFor) where
import Data.Char (isUpper, isLetter, isSpace)
import Data.String.Utils 

nLetters :: String -> Int
nLetters s = length $ filter (isLetter) s

nUppers :: String -> Int
nUppers s = length $ filter (isUpper) s

isQuestion :: String -> Bool
isQuestion s = '?' == (last . strip) s

allLettersAreCaps :: String -> Bool
allLettersAreCaps s = (nLetters s) == (nUppers s)

hasLetters :: String -> Bool
hasLetters s = (nLetters s) > 0

isYelled :: String -> Bool
isYelled s = allLettersAreCaps s && hasLetters s

isAllWhitespace :: String -> Bool
isAllWhitespace s = (length $ filter (isSpace) s) == (length s)

responseFor :: String -> String
responseFor xs
  | null xs || isAllWhitespace xs = "Fine. Be that way!"
  | isQuestion xs && isYelled xs = "Calm down, I know what I'm doing!"
  | isQuestion xs = "Sure."
  | isYelled xs = "Whoa, chill out!"
  | otherwise = "Whatever."
