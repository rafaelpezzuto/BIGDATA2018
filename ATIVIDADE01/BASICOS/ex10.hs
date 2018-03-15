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

divLista :: [a] -> ([a], [a])
divLista lista = (take ((length lista) `div` 2) lista, drop ((length lista) `div` 2) lista)

main = do
    let anosBissextos = [x | x <- [1..20], isBissexto x]
    let (primeiraMetade, segundaMetade) = divLista anosBissextos
    print(anosBissextos)
    print(primeiraMetade)
    print(segundaMetade)