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
    print (sum([x | x <- filter(\< 400,fib), isPar x] `using` parListChunk 10000 rseq))

-- soma resultou 4613732
-- limitei pelo 33 termo de fibo que eh por volta de 3,5 milhoes
-- o 34 ja ultrapassa 5 mi