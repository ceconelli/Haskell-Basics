intercalar::[Int]->[Int]->[Int]
intercalar [] list = list
intercalar list [] = list
intercalar (x:t) (y:r) =  reverter (intercalarRec (x:t) (y:r) [] 1)

intercalarRec::[Int]->[Int]->[Int]->Int->[Int]
intercalarRec [] y list n = reverter y ++ list
intercalarRec x [] list n = reverter x ++ list
intercalarRec [] [] list n = list
intercalarRec (x:t) (y:r) list n
 | n == 1 = intercalarRec t (y:r) (x:list) 2
 | n == 2 = intercalarRec (x:t) r (y:list) 1

reverter::[Int]->[Int]
reverter [] = []
reverter (x:t) = reverterRec [] (x:t)

reverterRec::[Int]->[Int]->[Int]
reverterRec list [] = list
reverterRec list (x:t) = reverterRec (x:list) t