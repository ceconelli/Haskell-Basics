nelementos::[Int]->Int
nelementos [] = 0
nelementos (x:t) = 1 + nelementos(t)