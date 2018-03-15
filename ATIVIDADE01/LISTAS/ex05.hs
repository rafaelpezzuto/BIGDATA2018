--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where

produtoEscalar u v = sum(zipWith(*) u v)

u = [1, 7]
v = [2, -3]

main :: IO()
main = do
    print (produtoEscalar u v)
