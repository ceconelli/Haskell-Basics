maior::[Int]->Int
maior [] = 0
maior (x:t) = maiorRec x t

maiorRec::Int->[Int]->Int
maiorRec n [] = n
maiorRec n (x:t)
 | x > n = maiorRec x t
 | otherwise = maiorRec n t