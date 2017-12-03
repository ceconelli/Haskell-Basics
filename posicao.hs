posicao::Int->[Int]->Int
posicao _ [] = 0
posicao n (x:t) = posicaoRec n (x:t) False
 -- | x == n = 0
 -- | otherwise = 1 + posicao n t 

posicaoRec::Int->[Int]->Bool->Int
posicaoRec _ [] _ = 0
posicaoRec n (x:t) existe
 | x == n = posicaoRec n (x:t) True
 | existe == True = 1
 | otherwise = 1 + posicaoRec n t False 