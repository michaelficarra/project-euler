primes :: [Int]
primes = 2 : filter (isPrime primes) [3,5..] where
  isPrime (p:ps) n
    | mod n p == 0 = False
    | p*p > n      = True
    | otherwise    = isPrime ps n
  isPrime [] _ = False -- never used, but avoids compiler warning

main = print $ sum $ takeWhile (< 2000000) primes
