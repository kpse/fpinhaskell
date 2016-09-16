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
