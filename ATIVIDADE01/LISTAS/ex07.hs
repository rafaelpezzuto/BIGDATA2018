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

collatzLen :: Integer -> Int
collatzLen x = length (map collatz (reverse([1..x])))

main :: IO()
main = do
    print(collatzLen 500)

-- incompleto
