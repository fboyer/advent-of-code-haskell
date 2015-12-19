module Day1.NotQuiteLispSpec (main, spec) where

import           Test.Hspec

import           Day1.NotQuiteLisp

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Santa can follow simple instructions" $ do
    it "ends up on floor 1 when given the '(' instruction" $
      followInstructions "(" `shouldBe` 1

    it "ends up on floor -1 when given the ')' instruction" $
      followInstructions ")" `shouldBe` -1

    it "ends up on the floor 0 when given no instruction" $
      followInstructions "" `shouldBe` 0

  describe "Santa can follow more complex instructions" $ do
    it "ends up on floor 0 when given the '(())' or '()()' instructions" $ do
      followInstructions "(())" `shouldBe` 0
      followInstructions "()()" `shouldBe` 0

    it "ends up on floor 3 when given the '(((' or '(()(()(' or '))(((((' instructions" $ do
      followInstructions "(((" `shouldBe` 3
      followInstructions "(()(()(" `shouldBe` 3
      followInstructions "))(((((" `shouldBe` 3

    it "ends up on floor -1 (the first basement level) when given the '())' or '))(' instructions" $ do
      followInstructions "())" `shouldBe` -1
      followInstructions "))(" `shouldBe` -1

    it "ends up on the floor -3 when given the ')))' or ')())())' instructions" $ do
      followInstructions ")))" `shouldBe` -3
      followInstructions ")())())" `shouldBe` -3

  describe "Santa can identify when he first entered the basement level" $ do
    it "on instruction 1 when given the ')' instruction" $
      findBasement ")" `shouldBe` Just 1

    it "on instruction 5 when given the '()())' instructions" $
      findBasement "()())" `shouldBe` Just 5

    it "never when given the no instruction or '((())'" $ do
      findBasement "" `shouldBe` Nothing
      findBasement "((())" `shouldBe` Nothing
