diagonals = (:) 1 [((l - 1) ^ 2) + (l * k) | l <- [2,4..], k <- [1..4]]
numDiagonals n = foldl (\a b -> a + 4) 1 [3,5..n]
sum $ take (numDiagonals 1001) diagonals

-- or, after some analysis, simply:
(+ 1) $ sum $ map (\n -> 4 * (n ^ 2) - (6 * n) + 6) [3,5..1001]
