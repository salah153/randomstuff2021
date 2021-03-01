drop_mult :: Int -> [Int] -> [Int]
drop_mult x xs = filter (\y -> mod y x /= 0) xs

dropall :: [Int] -> [Int]
dropall (x : xs) = x : dropall (drop_mult x xs)

primes :: [Int]
primes = dropall (from 2)

from :: Int -> [Int]
from x = x : from (x + 1)

goodPrimesBuilder :: [Int] -> [Int]
goodPrimesBuilder (a : b : c : xs)
  | b * b > a * c = b : goodPrimesBuilder (b : c : xs)
  | otherwise = goodPrimesBuilder (b : c : xs)

goodPrimes :: [Int]
goodPrimes = goodPrimesBuilder primes

--this is a teat