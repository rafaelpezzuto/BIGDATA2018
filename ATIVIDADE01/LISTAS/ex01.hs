--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

isDivisivel a b = (a `rem` b == 0)
getBoleanos x = [isDivisivel x i | i <- [1..20]]
qtdeTrue listaDeBoleanos = length ([i | i <- listaDeBoleanos , i == True])

divisivel20 :: Integer -> Bool
divisivel20 x = (qtdeTrue (getBoleanos x)) == 20

main = do
    print("testando 232792560")
    print(divisivel20 232792560)