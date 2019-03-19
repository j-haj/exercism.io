module Prime (nth) where
import Data.Set (Set)

isPrime :: Int -> Bool
isPrime n
  | n % 2 == 0 || n < 2 = False
  | otherwise = primeSearcher n 3
  where primeSearcher n i = if n % i == 0 then False
                            else if n <= i then True
                                 else primeSearcher n (i + 2)
  

nth :: Int -> Maybe Integer
nth n = error "You need to implement this function."
