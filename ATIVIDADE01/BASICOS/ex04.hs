--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

mult35 :: Integer -> Bool
mult35 x
    | x `rem` 3 == 0 && x `rem` 5 == 0 = True
    | otherwise = False

main = do
    print(mult35 15)
    print(mult35 9)
    print(mult35 5)
