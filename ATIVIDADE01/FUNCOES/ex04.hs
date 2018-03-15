--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

isDivisivel a b = (a `rem` b == 0)
getBoleanos x = [isDivisivel x i | i <- [1..x]]
qtdeTrue listaDeBoleanos = length ([i | i <- listaDeBoleanos , i == True]) 

isPrimo :: Integer -> Bool
isPrimo 0 = False
isPrimo 1 = False
isPrimo 2 = True
isPrimo x
    | (qtdeTrue (getBoleanos x)) > 2 = False
    | otherwise = True


main = do
    print([t | t <- [0..100], isPrimo t])