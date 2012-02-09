main = print $ reverse $ take 10 $ reverse $ show $ sum [i ^ (toInteger i) | i <- [1..1000]]
