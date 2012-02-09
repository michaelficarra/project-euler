import Data.List

prime 1 = False
prime 2 = True
prime x = not $ any (== 0) $ map (rem x) [2..(x-1)]
primes = [x | x <- [2..], prime x]

firstFactor x =
  ff x primes
  where
    ff x (p:ps) =
      if x == 0 || p > x then Nothing
      else case x `divMod` p of
        (mult, 0) -> Just (p, mult)
        (_, _) -> ff x ps

primeFactors x = unfoldr firstFactor x

main = print $ maximum $ primeFactors 600851475143
