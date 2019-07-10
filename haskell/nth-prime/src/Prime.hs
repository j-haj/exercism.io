module Prime (nth) where

-- Slow but effective
isPrime :: Int -> Bool
isPrime n
  | n == 2 = True
  | n `mod` 2 == 0 || n < 2 = False
  | otherwise = primeSearcher n 3
  where primeSearcher m i = if m `mod` i == 0 then m == i
                            else if m <= i then True
                                 else primeSearcher m (i + 2)
  

nth :: Int -> Maybe Integer
nth n
  | n <= 0 = Nothing
  | n > 0 = Just . toInteger $ last $ take n $ filter isPrime $ vals
  where vals = 1 : map (+1) vals
