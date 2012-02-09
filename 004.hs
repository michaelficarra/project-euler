import Data.List
palNum x = show x == reverse (show x)
main = print $ last $ sort [a * b | a <- [999,998..500], b <- [999,998..500], palNum (a * b)]
