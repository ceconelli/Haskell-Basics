potencia::Int->Int->Int
potencia 1 _ = 1
potencia n 1 = n
potencia base expoente = base * potencia base (expoente-1) 