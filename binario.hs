binario::Int->[Int]
binario n = binarioRec [] n

binarioRec::[Int]->Int->[Int]
binarioRec list 0 = (0:list)
binarioRec list n
 | n `mod` 2 == 0 = binarioRec (0:list) (n `div`2)
 | n `mod` 2 == 1 = binarioRec (1:list) (n `div`2)