trocar::Int->[Int]
trocar 0 = []
trocar n = trocarRec n [100,50,10,5,1] []

trocarRec::Int->[Int]->[Int]->[Int]
trocarRec 0 (x:t) list = list
trocarRec n (x:t) list
 | n > x = trocarRec (n-x) (x:t) (x:list)
 | n == x = (x:list)
 | otherwise = trocarRec n t list