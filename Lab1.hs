module Lab1 where

-- smaller x y = x < y
--
-- greater x y = smaller y x
--
-- equal x y = not(smaller x y) && not(greater x y)
--
-- smaller_equal = not(greater x y) && equal x y
--
-- greater_equal = not(smaller x y) && equal x y
--
-- not_equal = not(equal x y)
--
-- same_values p1 p2 x y = p1 x y == p2 x y
--
-- same_values2 p1 p2 x y = equal(p1 x y)(p2 x y)

even_new 0 = True
-- even_new 1 = False
even_new n = odd_new(n-1)

odd_new 0 = False
-- odd_new 1 = True
odd_new n = even_new(n-1)

-- my_gcd 1 1 = 1
-- my_gcd x y = if x mod y == 0 then x else my_gcd(x y-1)




