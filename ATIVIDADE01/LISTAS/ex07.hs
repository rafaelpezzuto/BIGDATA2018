--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where

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

main :: IO()
main = do
    print(collatzLen 77031)
    print(collatzLen 837799)
