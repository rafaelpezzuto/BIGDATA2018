--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

concatenaString :: String -> String -> String
concatenaString a b = a ++ " " ++ b

main = do
    print(concatenaString "Ola" "Mundo")