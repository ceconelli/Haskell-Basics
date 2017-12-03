contar::[Int]->Int
contar list
 | list == [] = 0
 | otherwise = nelementos (impares list) 

impares::[Int]->[Int]
impares [] = []
impares list = [i | i <- list, i<0]

nelementos::[Int]->Int
nelementos [] = 0
nelementos (x:t) = 1 + nelementos(t)