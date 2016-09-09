import Control.Monad

-- 3.2
tail1 :: [a] -> [a]
tail1 [] = []
tail1 (x:xs) = xs

-- 3.3
setHead :: [a] -> a -> [a]
setHead xs newHead = newHead:xs

-- 3.4
drop1 :: [a] -> Int -> [a]
drop1 [] _ = []
drop1 xs 0 = xs
drop1 (x:xs) n = drop1 xs (n-1)

-- 3.5
dropWhile1 :: [a] -> (a -> Bool) -> [a]
dropWhile1 (x:xs) p = if p x then dropWhile1 xs p else x:xs

-- 3.6
init1 :: [a] -> [a]
init1 [] = []
init1 [x] = []
init1 (x:xs) = x : init1 xs

-- 3.7
product1 :: Num a => [a] -> a
product1 = foldl (*) 1

-- 3.8
length1 :: [a] -> Int
length1 = foldr (+1) 0

-- 3.24
hasSubsequence :: Eq a => [a] -> [a] -> Bool
hasSubsequence sup sub = sub `elem` subsequences sup

-- TODO implement filterM myself
subsequences :: [a] -> [[a]]
subsequences = filterM (const [True, False])

hasSubsequence1 :: Eq a => [a] -> [a] -> Bool
hasSubsequence1 _ [] = True
hasSubsequence1 [] _ = False
hasSubsequence1 (x:xs) (y:ys)
  | x == y = True && hasSubsequence1 xs ys
  | otherwise = hasSubsequence1 xs (y:ys)

filter1 :: (a -> Bool) -> [a] -> [a]
filter1 p [] = []
filter1 p (x:xs) = if p x then x : filter1 p xs else filter1 p xs

flatMap :: (a -> [b]) -> [a] -> [b]
flatMap = concat $ fmap

--filter2 :: (a -> Bool) -> [a] -> [a]
