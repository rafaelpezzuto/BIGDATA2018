--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

isTriangulo :: Integer -> Integer -> Integer -> String
isTriangulo a b c
    | a /= b && b /= c && a /= c = "Escaleno"
    | a == b && b == c = "Equilatero"
    | otherwise = "Isosceles"

main = do
    print(isTriangulo 5 13 15)
    print(isTriangulo 14 14 10)
    print(isTriangulo 5 5 5)