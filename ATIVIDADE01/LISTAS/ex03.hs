--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where

fib = 1 : 2 : prox fib
    where
        prox (x : t@(y:z)) = (x+y) : prox t

main :: IO()
main = do
    print("ler codigo fonte com definicao de fib")
