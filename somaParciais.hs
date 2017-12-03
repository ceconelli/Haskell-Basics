somaParciais::[Int]->[Int]
somaParciais (x:t) = reverter (somaParciaisRec 0 (x:t) [])

somaParciaisRec::Int->[Int]->[Int]->[Int]
somaParciaisRec n [] list = list
somaParciaisRec n (x:t) list = somaParciaisRec (n+x) t ((x+n):list)

reverter::[Int]->[Int]
reverter [] = []
reverter (x:t) = reverterRec [] (x:t)

reverterRec::[Int]->[Int]->[Int]
reverterRec list [] = list
reverterRec list (x:t) = reverterRec (x:list) t