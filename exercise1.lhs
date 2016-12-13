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

exercise 1.4
============

exercise 1.5
============
