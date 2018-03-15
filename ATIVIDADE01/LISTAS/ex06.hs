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

main :: IO()
main = do
    print(collatz 5)
