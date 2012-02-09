prime 1 = False
prime 2 = True
prime x = not $ any (== 0) $ map (rem x) [2..(x-1)]
primes = [x | x <- [2..], prime x]
main = print $ head $ drop 10000 primes
