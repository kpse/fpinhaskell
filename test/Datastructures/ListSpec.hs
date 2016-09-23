module Datastructures.ListSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck
import Datastructures.List

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Tail" $ do
    it "should return tail" $ do
      tail1 [1..5] `shouldBe` [2..5]
    it "should return tail of an empty list" $ do
      tail1 []  `shouldBe` ([] :: [Int])

  describe "setHead" $ do
    it "should set new head for list" $ do
      setHead [1..3] 4 `shouldBe` [4, 1, 2, 3]
