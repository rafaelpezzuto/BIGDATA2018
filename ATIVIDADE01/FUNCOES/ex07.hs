--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where
main :: IO()

fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial 1 = 1
fatorial n = fatorial' n 1
    where
        fatorial' 1 r = r
        fatorial' n r = fatorial' (n - 1) (n * r)

coefBin :: Integer -> Integer -> Integer
coefBin 0 _ = error "erro"
coefBin _ 0 = 1
coefBin m 1 = m
coefBin m n
    | m >= n = fatorial m `div` ((fatorial n) * fatorial (m - n))
    | otherwise = error "erro"

main = do
    print(coefBin 5 2)
