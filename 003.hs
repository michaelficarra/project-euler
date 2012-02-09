import Data.List

primes :: [Int]
primes = 2 : filter (isPrime primes) [3,5..] where
  isPrime (p:ps) n
    | mod n p == 0 = False
    | p*p > n      = True
    | otherwise    = isPrime ps n
  isPrime [] _ = False -- never used, but avoids compiler warning

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
