module Lab6 where



and2 l = foldr(\x y -> x && y) True l

gcd2 n 0 = n
gcd2 n m = gcd m (mod n m)


nwd2 l = foldr(\x y -> gcd2 x y) 0 l


delete a = foldr(\x (xs1, xs2) -> if x == a then (x:xs1, xs2) else (x:xs1, x:xs2)) ([], [])


map2 f l = foldr(\x y -> f x  ) []

