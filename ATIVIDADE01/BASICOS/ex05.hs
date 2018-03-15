--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

ex05 :: Integer -> Bool
ex05 x
    | x < -1 = True
    | x > 1 && x `rem` 2 == 0 = True
    | otherwise = False

main = do
    print(ex05 (-15))
    print(ex05 9)
    print(ex05 6)
