--
-- Copyright (c) 2018 Rafael Jeferson Pezzuto Damaceno
-- GPL version 3 or later
-- (see http://www.gnu.org/copyleft/gpl.html)
--

module Main where

import Control.Parallel.Strategies

isDivisivel a b = (a `rem` b == 0)
getBoleanos x = [isDivisivel x i | i <- [1..20]]
qtdeTrue listaDeBoleanos = length ([i | i <- listaDeBoleanos , i == True])

divisivel20 :: Integer -> Bool
divisivel20 x = (qtdeTrue (getBoleanos x)) == 20

projectEuler5 = take 1 [x | x <- [1..], divisivel20 x] `using` parListChunk 1000 rseq

main :: IO()
main = do
    print(projectEuler5)

-- demorou 1237.251s para executar no meu Ryzen 1600 (com 6 cores e 12 threads)
-- encontrou o valor 232792560