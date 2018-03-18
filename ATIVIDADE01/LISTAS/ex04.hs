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

isLessOrEqualThan4000000 x
    | x <= 4000000 = True
    | otherwise = False

fib = 1 : 2 : prox fib
    where
        prox (x : t@(y:z)) = (x+y) : prox t

projectoEuler2 = sum(takeWhile (isLessOrEqualThan4000000) [x | x <- fib, isPar x] `using` parListChunk 50000 rseq)

main :: IO()
main = do
    print (projectoEuler2)

-- soma resultou 4613732