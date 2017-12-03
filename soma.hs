soma::[Int]->Int
soma [] = 0
soma (x:t) = x + soma(t)
