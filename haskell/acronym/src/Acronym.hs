
module Acronym (abbreviate) where
import Data.Char (isUpper,toUpper)
import Data.List.Split

abbreviate :: String -> String
abbreviate xs = let abbrevHelper acc addNext priorCap x
                      | null x = acc
                      | not priorCap && (isUpper $ head x) =
                        abbrevHelper (acc ++ [head x]) False True (tail x)
                      | priorCap &&  (isUpper $ head x) =
                        abbrevHelper acc False True (tail x)
                      | (elem (head x) " -") =
                        abbrevHelper acc True False (tail x)
                      | addNext =
                        abbrevHelper (acc ++ [toUpper $ head x]) False False (tail x)
                      | otherwise = abbrevHelper acc False False (tail x)
                in abbrevHelper "" False False xs
