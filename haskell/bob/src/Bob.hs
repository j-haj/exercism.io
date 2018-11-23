module Bob (responseFor) where
import Data.Char (isUpper, isLetter, isSpace)
import Data.String.Utils 

isQuestion :: String -> Bool
isQuestion s = '?' == (last . strip) s

allLettersAreCaps :: String -> Bool
allLettersAreCaps s = foldr (\x acc -> acc && if isLetter x
                                              then isUpper x
                                              else True)
                      True s

hasLetters :: String -> Bool
hasLetters s = foldl (\acc x -> acc || isLetter x) False s

isYelled :: String -> Bool
isYelled s = allLettersAreCaps s && hasLetters s

isAllWhitespace :: String -> Bool
isAllWhitespace s = foldr (\x acc -> acc && isSpace x) True s

responseFor :: String -> String
responseFor xs
  | null xs || isAllWhitespace xs = "Fine. Be that way!"
  | isQuestion xs && isYelled xs = "Calm down, I know what I'm doing!"
  | isQuestion xs = "Sure."
  | isYelled xs = "Whoa, chill out!"
  | otherwise = "Whatever."
