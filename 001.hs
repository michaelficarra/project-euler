main = print $ sum [t | t <- [1,2..999], (mod t 3 == 0) || (mod t 5 == 0)]
