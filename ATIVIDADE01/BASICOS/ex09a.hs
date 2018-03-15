--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

isBissexto :: Integer -> Bool
isBissexto ano
    | (ano `rem` 400 == 0) = True
    | ((ano `rem` 4 == 0) && (ano `rem` 100 /= 0)) = True
    | otherwise = False

main = do
    let anosBissextos = [x | x <- [1..2018], isBissexto x]
    let primeirosAnosBissextos = take 10 anosBissextos
    print(primeirosAnosBissextos)