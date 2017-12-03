somaImpares::[Int]->Int
somaImpares [] = 0
somaImpares (x:t)
 | x `mod` 2 == 0  = somaImpares(t)
 | otherwise = x + somaImpares(t)
