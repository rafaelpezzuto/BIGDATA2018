--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where

import Control.Parallel.Strategies

isPar x
    | x `rem` 2 == 0 = True
    | otherwise = False

fib = 1 : 2 : prox fib
    where
        prox (x : t@(y:z)) = (x+y) : prox t

main :: IO()
main = do
    print (sum([x | x <- fib, isPar x, x <= 400] `using` parListChunk 10000 rseq))

-- soma resultou 4613732
-- incompleto
-- mudar estrategia para, caso lista fib chegue a um valor maior que 4000000
--   parar geracao da lista
--   filtrar impares
--   realizar soma da lista resultante (pares menores ou iguais a 4000000)