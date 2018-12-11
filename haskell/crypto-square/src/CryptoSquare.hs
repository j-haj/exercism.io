module CryptoSquare (encode) where

import Data.Char (isPunctuation, isSpace, toLower)

-- Get dimensions for split. The edge case is when the normalized string
-- length is a perfect square, otherwise we want smallest integer greater
-- than sqrt n.
rectangleDimensions :: Int -> Int
rectangleDimensions n = let lowerBound =
                              floor $ sqrt ((fromIntegral n) :: Double)
                        in if lowerBound * lowerBound == n
                           then lowerBound
                           else lowerBound + 1

-- Filter whitespace and make all chars lowercase, then pad with whitespace
normalize :: String -> String
normalize s = padWithWhitespace reducedInput $ rdim * rdim
  where padWithWhitespace s' n = if length s' < n
          then padWithWhitespace (s' ++ " ") n
          else s'
        reducedInput = (filter (\c -> not $ isSpace c || isPunctuation c)
                        (map toLower s))
        rdim = rectangleDimensions $ length reducedInput

splitEveryN :: Int -> String -> [String]
splitEveryN n s
  | n < length  s = [take n s] ++ splitEveryN n (drop n s)
  | otherwise = [take n s]

encode :: String -> String
encode xs
  | null xs = ""
  | otherwise = helper $ splitEveryN (rectangleDimensions $ length $ nxs) nxs
  where helper ys = [head y | y <- ys] ++
          case (length $ head ys) > 1 of
            True -> " " ++ (helper [tail y | y <- ys])
            False -> ""
        nxs = normalize xs
