-- it would be great if we could memoize this
let { fib 0 = 1; fib 1 = 1; fib x = fib (x - 1) + fib (x - 2) }
sum $ filter even $ takeWhile (<= 4000000) $ [fib x | x <- [0..]]