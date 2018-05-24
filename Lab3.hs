module Lab3 where
-- dopisać wersje z accumulatorem
silnia 0 = 1
silnia n = n * silnia (n-1)

fib 1 = 1
fib 2 = 1
fib n = fib(n-1) + fib(n-2)

append [] [] = []
append l [] = l
append [] l = l
append (x:xs) l = x : (append xs l)

--
-- myfoldl f e []= e
-- myfoldl f e (x:xs) = foldl f (f e x) xs
-- append2 l m = myfoldl (:) l m

member y [] = False
member y (x:xs) = if(y==x) then True else member y xs


-- przepisuje elementy listy do nowej pustej listy
reverse2 l = foldr (:) l []

-- przepisuje elementy listy do nowej pustej listy odwracajac kolejnosc
reverse3 l = foldl (flip (:)) [] l

mylast [] = []
mylast [l] = l
mylast (x:xs) = mylast(xs)

mylast2 [l] = [l]
mylast2 (x:xs) = mylast2(xs)



delete x (y:ys) = if x == y then ys else delete x ys

split x [] = [[], []]
split x l = [filter (>x) l, filter(<x) l]

quadrat = map (\x -> x*x)

-- combine [] ys = []
-- combine xs [] = []
-- combine (x:xs)(y:ys) = (x,y) : combine xs ys

combine2 [] ys = []
combine2 xs [] = []
combine2 (x:xs)(y:ys) = (x,y) : combine2 xs ys




