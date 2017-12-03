perfeito::Int->Bool
perfeito n = igual n (sumDiv n (n-1))

sumDiv::Int->Int->Int
sumDiv n 1 = 1
sumDiv n div
 | n `mod` div == 0 = div + sumDiv n (div-1)
 | otherwise = sumDiv n (div-1)

igual::Int->Int->Bool
igual a b
 | a == b = True
 | otherwise = False