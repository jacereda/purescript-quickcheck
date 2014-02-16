module Main where

import Prelude
import Eff
import QuickCheck
import Arrays

prop1 :: Number -> Number -> Boolean
prop1 a b = a < b

prop2 :: Number -> Number -> Boolean
prop2 a b = a + b == b + a

prop3 :: [Number] -> Boolean
prop3 (x:y:xs) = x < y && prop3 xs
prop3 _ = true

main = do
  quickCheck prop1
  quickCheck prop2
  quickCheck prop3