--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

multEtiope :: Integer -> Integer -> Integer
multEtiope m n
    | m == 1 = n
    | m `rem` 2 == 0 = multEtiope (m `div` 2) (n * 2)
    | m `rem` 2 /= 0 = (multEtiope (m `div` 2) (n * 2)) + n

main = do
    print(multEtiope 21 30)