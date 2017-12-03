existe::Int->[Int]->Bool
existe _ [] = False
existe n (x:t)
 | x == n = True
 | otherwise = existe n t