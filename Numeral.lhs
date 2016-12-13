> {-# LANGUAGE UnicodeSyntax #-}
> module Numeral
> where
> import Unicode

> type Base   =  Integer
> type Digit  =  Integer

msdf, lsdf :: Base -> [Digit] -> Integer

--------------------------------------------------------------------------------
author: Hendrik Werner s4549775
author: Jasper Haasdijk s4449754

exercise 2.1
============

> msdf :: Base -> [Digit] -> Integer
> msdf base = foldl (\offset value -> offset * base + value) 0

> lsdf :: Base -> [Digit] -> Integer
> lsdf base = foldr (\offset value -> value * base + offset) 0

exercise 2.2
============

We can define lsdf and msdf using another, such as:
lsdf = msdf where the list is reversed
msdf = lsdf where the list is reversed

This is basically what the definition of foldr and foldl is. With foldr we build
the list from the rightmost element and with foldl we build the list from the 
leftmost element.
