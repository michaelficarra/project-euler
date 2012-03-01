import Data.Maybe

isPalindrome :: (Show a) => a -> Bool
isPalindrome x = let y = show x in y == reverse y

reversedInt :: Integer -> Integer
reversedInt x = read $ reverse $ show x

isLychrel :: Integer -> Maybe Bool
isLychrel x =
  isLychrel' 1 x
  where
    isLychrel' n x =
      if n > 50 then Nothing
      else
        let next = x + reversedInt x in
        if isPalindrome next then Just False
        else isLychrel' (n + 1) next

main = print $ length [x | x <- [0..9999], fromMaybe True $ isLychrel x]
