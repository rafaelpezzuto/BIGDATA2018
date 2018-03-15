--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

div2d :: Integer -> Double
div2d x = (fromIntegral x) / 2

main = do
    print(div2d (-15))
    print(div2d 9)
    print(div2d 6)
