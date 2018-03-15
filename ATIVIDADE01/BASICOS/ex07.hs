--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

sinXOver2 :: Double -> (Double, Double)
sinXOver2 a = (x1, x2)
    where
        x1 = sqrt((1 - cos(a)) / 2)
        x2 = -sqrt((1 - cos(a)) / 2)

main = do
    print(sinXOver2 pi)
