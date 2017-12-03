reverter::[Int]->[Int]
reverter [] = []
reverter (x:t) = reverterRec [] (x:t)

reverterRec::[Int]->[Int]->[Int]
reverterRec list [] = list
reverterRec list (x:t) = reverterRec (x:list) t