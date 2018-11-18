module Clock (addDelta, fromHourMin, toString) where

data Clock = Clock { hour :: Int
                   , minute :: Int
                   } deriving (Show, Eq)

fromHourMin :: Int -> Int -> Clock
fromHourMin hour min = Clock (( hour + (min `div` 60)) `mod` 24) (min `mod` 60)

toString :: Clock -> String
toString clock = formatHour clock ++ ":" ++ formatMinute clock
  where formatHour clock
          | hour clock == 24 = "00"
          | hour clock < 10 = "0" ++ show (hour clock)
          | otherwise = show (hour clock)
        formatMinute clock
          | minute clock < 10 = "0" ++ show (minute clock)
          | otherwise = show (minute clock)

addDelta :: Int -> Int -> Clock -> Clock
addDelta hr min clock = Clock newHour newMin
  where newHour = (hr + hour clock + ((min + minute clock) `div` 60)) `mod` 24
        newMin = (min + minute clock) `mod` 60
        

