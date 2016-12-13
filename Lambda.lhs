> {-# LANGUAGE UnicodeSyntax #-}
> module Lambda
> where
> import Prelude hiding (fail)
> import Unicode ()
> import Parser

> infixl 9 :@
>
> data Lambda var
>   =  Var var                   -- variable
>   |  Fun var (Lambda var)      -- abstraction/λ-expression
>   |  Lambda var :@ Lambda var  -- application
>   deriving (Show)

--------------------------------------------------------------------------------
author: Hendrik Werner s4549775
author: Jasper Haasdijk s4449754

exercise 4.1
============

exercise 4.2
============
