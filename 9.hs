head [a*b*c | a <- [1..999], b <- [a..999], c <- [b..999], a*a + b*b == c*c, a + b + c == 1000]