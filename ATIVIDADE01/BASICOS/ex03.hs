--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

mult5 :: Integer -> Bool
mult5 x
    | x `rem` 5 == 0 = True
    | otherwise = False

main = do
    print(mult5 9)
    print(mult5 5)
