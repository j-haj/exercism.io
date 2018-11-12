module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear  year = (year `mod` 16 == 0 && year `mod` 25 == 0) ||
  (year `mod` 4 == 0 && year `mod` 25 /= 0)
