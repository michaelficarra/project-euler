infixl 6  $+
(a:as) $+ (b:bs) = (a+b) : (as $+ bs)
as     $+ []     = as
[]     $+ bs     = bs

nextPascal xs = xs $+ (0:xs)
pascalTriangle = iterate nextPascal [1]
choose n k = pascalTriangle !! n !! k

main = print $ length [n | n <- [1..100], r <- [1..n], choose n r > 1000000]
