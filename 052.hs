import Data.List
until (\x -> (==) 1 $ length $ nub [sort $ show $ k * x | k <- [2..6]]) succ 1
