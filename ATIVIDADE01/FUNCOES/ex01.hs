--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

isTriangulo :: Integer -> Integer -> Integer -> Bool
isTriangulo a b c = cond1 a b c && cond2 a b c && cond3 a b c
    where
        cond1 a b c = abs(b - c) < a && a < (b + c)
        cond2 a b c = abs(a - c) < b && b < (a + c)
        cond3 a b c = abs(a - b) < c && c < (a + b)

main = do
    print(isTriangulo 5 10 9)
    print(isTriangulo 14 8 10)
    print(isTriangulo 5 2 1)