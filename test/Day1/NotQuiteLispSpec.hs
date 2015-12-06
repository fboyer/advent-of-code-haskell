module Day1.NotQuiteLispSpec (main, spec) where

import           Test.Hspec

import           Day1.NotQuiteLisp

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "getFloor" $ do
    it "returns 1 when given a '(' input" $ do
      getFloor "(" `shouldBe` 1

    it "returns -1 when give a ')' input" $ do
      getFloor ")" `shouldBe` -1

    it "returns 0 when given a '()' input" $ do
      getFloor "()" `shouldBe` 0

  describe "findBasementIndex" $ do
    it "returns 1 when given a ')' input" $ do
      findBasementIndex 0 ")" `shouldBe` 1

    it "return 5 when given a '()())' input" $ do
      findBasementIndex 0 "()())" `shouldBe` 5
