author: Hendrik Werner s4549775
author: Jasper Haasdijk s4449754

exercise 1.1
============

allTrue determines whether every element of a list of Booleans is true

> allTrue :: [Bool] -> Bool
> allTrue = foldr (&&) True

exercise 1.2
============

allFalse determines whether every elementof a list of Booleans is false

> allFalse :: [Bool] -> Bool
> allFalse = allTrue . map not

exercise 1.3
============

member determines whether a specified element is contained in a given list

> member :: (Eq a) => a -> [a] -> Bool
> member a as = foldr (\x y -> x == a || y) False as

exercise 1.4
============

smallest calculates the smallest value in a list of integers

> smallest :: [Int] -> Int
> smallest = foldr min maxBound

exercise 1.5
============

largest calculates the largest value in a list of integers

> largest :: [Int] -> Int
> largest = foldr (retIntLarge) minBound

> retIntLarge :: Int -> Int -> Int
> retIntLarge l r
>     | l >= r = l
>     | otherwise = r
