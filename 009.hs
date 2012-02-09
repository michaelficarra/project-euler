main = print $ head [a*b*(1000-a-b) | a <- [1..999], b <- [1..999], let c = 1000-a-b in a*a + b*b == c*c]
