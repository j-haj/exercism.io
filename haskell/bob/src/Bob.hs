module Bob (responseFor) where
import Data.Char (isUpper)

isQuestion :: String -> Bool
isQuestion s = '?' `elem` s

isYelled :: String -> Bool
isYelled s = foldr (\x acc -> acc && isUpper x) s

responseFor :: String -> String
responseFor xs = error "You need to implement this function."
