--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

stringToDigitsInteger x = map (read . (:"")) x :: [Integer]

main = do
    let digitos = stringToDigitsInteger "123"
    print(digitos)
    