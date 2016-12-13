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
