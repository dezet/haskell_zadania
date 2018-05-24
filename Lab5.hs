module Lab5 where
-- za pomoca foldr
prod [] = 1
prod (x:xs) = x * (prod xs)

prod2 l = foldr (*) 1 l

length2 l = foldr (\x y -> y + 1) 0 l





