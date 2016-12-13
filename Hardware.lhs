> {-# LANGUAGE UnicodeSyntax #-}
> module Hardware
> where
> import Unicode

> data Bit  =  O | I
>   deriving (Eq, Ord, Show)

> infixr 3 ∧
> (∧) ∷ Bit → Bit → Bit
> O ∧ _b  =  O
> I ∧ b   =  b

> happyOr ∷ Bit → Bit → Bit
> O `happyOr` b   =  b
> I `happyOr` _b  =  I

> infixr 4 ⊕
> (⊕) ∷ Bit → Bit → Bit
> O ⊕ O  =  O
> O ⊕ I  =  I
> I ⊕ O  =  I
> I ⊕ I  =  O

mapr ∷ ((a, state) → (b, state)) → (([a], state) → ([b], state))

> type Carry  =  Bit

halfAdder ∷ (Bit, Bit) → (Bit, Carry)
fullAdder ∷ ((Bit, Bit), Carry) → (Bit, Carry)

--------------------------------------------------------------------------------
author: Hendrik Werner s4549775
author: Jasper Haasdijk s4449754

exercise 6.1
============

> mapr :: ((a, state) -> (b, state)) -> (([a], state) -> ([b], state))
> mapr f ([], s) = ([], s)
> mapr f (xs, y) = (new_a : (fst rem), (snd rem))
>                where a:as = reverse xs
>                      (new_a, new_state) = f (a, y)
>                      rem = mapr f (as, new_state)

exercise 6.2
============

> halfAdder ∷ (Bit, Bit) → (Bit, Carry)
> halfAdder (O, O) = (O, O)
> halfAdder (O, I) = (I, O)
> halfAdder (I, O) = (I, O)
> halfAdder (I, I) = (O, I)

> fullAdder ∷ ((Bit, Bit), Carry) → (Bit, Carry)
> fullAdder ((a, b), c) = (fst loHA2, (snd loHA2) `happyOr` (snd loHA1))
>                       where loHA1 = halfAdder(a, b)
>                             loHA2 = halfAdder(fst loHA1, c)

> rippleAdder :: ([(Bit, Bit)], Carry) -> ([Bit], Carry)
> rippleAdder = mapr fullAdder

Example use of this function is: "rippleAdder ([(O, I), (I, O)], I)"
