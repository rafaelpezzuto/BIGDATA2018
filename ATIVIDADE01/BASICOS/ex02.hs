--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

mult3 :: Integer -> Bool
mult3 x
    | x `rem` 3 == 0 = True
    | otherwise = False

main = do
    print(mult3 9)
    print(mult3 5)
