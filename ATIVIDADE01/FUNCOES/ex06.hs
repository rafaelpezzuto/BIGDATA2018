--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

integerToString x = show x

integerToDigitsInteger x  = map (read . (:"")) (integerToString x) :: [Integer]

somaDigitos :: Num a => [a] -> a
somaDigitos [] = 0
somaDigitos (x:xs) = x + (somaDigitos xs)

pAditiva :: Integer -> Integer
pAditiva x
    | length (integerToDigitsInteger x) > 1 = pAditiva $ (somaDigitos $ integerToDigitsInteger x)
    | otherwise = x

main = do
    print(pAditiva 1234)
