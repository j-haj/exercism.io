module Strain (keep, discard) where

discard :: (a -> Bool) -> [a] -> [a]
discard p [] = []
discard p xs = [x | x <- xs, not $ p x]

keep :: (a -> Bool) -> [a] -> [a]
keep p [] = []
keep p xs = [x | x <- xs, p x]
