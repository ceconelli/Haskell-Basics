removerFim::Int->[Int]->[Int]
removerFim _ [] = []
removerFim n (x:t) = reverter (removerFimRec (length(x:t)-n) (x:t) [])

removerFimRec::Int->[Int]->[Int]->[Int]
removerFimRec n [] list = []
removerFimRec 0 _ list = list
removerFimRec n (x:t) list = removerFimRec (n-1) t (x:list)

reverter::[Int]->[Int]
reverter [] = []
reverter (x:t) = reverterRec [] (x:t)

reverterRec::[Int]->[Int]->[Int]
reverterRec list [] = list
reverterRec list (x:t) = reverterRec (x:list) t