primo::Int->Bool
primo 1 = False
primo n = primoRec n (n-1)

primoRec::Int->Int->Bool
primoRec n 1 = True
primoRec n d
 | n `mod` d == 0 = False
 | otherwise = primoRec n (d-1)