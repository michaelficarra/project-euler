getDigit n = read [(concatMap show [1..]) !! (n - 1)] :: Integer
main = print $ product $ map getDigit [floor $ 10 ** x | x <- [0..5]]
