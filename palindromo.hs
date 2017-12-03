palindromo::[Int]->Bool
palindromo [] = True
palindromo list = igual list (reverter list)

reverter::[Int]->[Int]
reverter [] = []
reverter (x:t) = reverterRec [] (x:t)

reverterRec::[Int]->[Int]->[Int]
reverterRec list [] = list
reverterRec list (x:t) = reverterRec (x:list) t

igual::[Int]->[Int]->Bool
igual [] [] = True
igual [] list = False
igual list [] = False
igual (x:t) (y:b)
 | x == y = igual t b
 | otherwise = False