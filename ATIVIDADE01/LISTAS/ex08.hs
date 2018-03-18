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

collatz :: Integer -> Integer
collatz x
    | isPar x = x `div` 2
    | not (isPar x) = 3 * x + 1

collatzLen :: Integer -> Integer
collatzLen x = collatzLen' x 1
    where
        collatzLen' 1 a = 1
        collatzLen' x a = collatzLen (collatz x) + 1

geraListaCollatzLen = [collatzLen x | x <- [1..1000000]] `using` parListChunk 50000 rseq
projectEuler14 = maximum (zip geraListaCollatzLen [1..])

main :: IO()
main = do
    print("(VALOR MAXIMO,NUMERO)")
    print(projectEuler14)

-- 19.673s
-- saida: (525,837799)
-- configuracao
--   intel i5 4210U 1.7 GHz
--   8 GB RAM