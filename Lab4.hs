module Lab4 where

--insertionsort :: (a -> a -> Bool) -> [a] -> [a]
--- nie wiem

map2 f [] [] = []
map2 f  xs [] = xs
map2 f (x1:xs1) (x2:xs2) = f x1 x2 : map2 f xs1 xs2


pair [] ys = []
pair xs [] = []
pair (x:xs)(y:ys) = (x,y) : pair xs ys


filter3 p [] = []
filter3 p (x:xs) = if(p x) then x : filter3 p xs else filter3 p xs


foldr f z [] = []
foldr f z (x:xs) = f x (foldr f z xs)




