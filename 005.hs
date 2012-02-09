main = print $ head [x | x <- [20,40..], all (== 0) $ map (mod x) [2..19]]
