module Lab2 where

my_gcd :: Int -> Int -> Int
-- my_gcd x 0 = x
-- my_gcd x 1 = 1
-- my_gcd x y = if mod x y == 0 then y else my_gcd x (y-1)
gcd2 n 0 = n
gcd2 n m = gcd m (mod n m)


my_lcm :: Int -> Int -> Int
my_lcm x y = div (x * y) (my_gcd x y)


-- delta :: Int -> Int  -> Int -> Int
delta a b c = b^b - 4 * a * c

-- kwad  :: Int -> Int -> Int -> Int
kwad a b c | (delta a b c) < 0 = []
kwad a b c | (delta a b c) == 0 = [(-b) / (2*a)]
kwad a b c | (delta a b c) > 0 = [(-b - sqrt(delta a b c)) / (2 * a), (-b + sqrt(delta a b c)) / (2 * a)]



