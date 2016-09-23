module Datastructures.List where

import Control.Monad

-- 3.2
tail1 :: [a] -> [a]
tail1 [] = []
tail1 (x:xs) = xs

-- 3.3
setHead :: [a] -> a -> [a]
setHead xs newHead = newHead:xs

