module Day2.IWasToldThereWouldBeNoMathSpec (main, spec) where

import           Test.Hspec

import           Day2.IWasToldThereWouldBeNoMath

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Elves can calculate the total square feet of wrapping paper needed for a single present" $ do
    it "requires 58 square feet of wrapping paper when given the '2x3x4' present dimension" $
      calcTotalWrappingPaperNeeded "2x3x4" `shouldBe` 58

    it "requires 43 square feet of wrapping paper when given the '1x1x10' present dimension" $
      calcTotalWrappingPaperNeeded "1x1x10" `shouldBe` 43

    it "requires 0 square feet of wrapping paper when given no present to wrap" $
      calcTotalWrappingPaperNeeded "" `shouldBe` 0

  describe "Elves can calculate the total square feet of wrapping paper needed for multiple presents" $
    it "requires 101 square feet of wrapping paper when given the '2x3x4' and '1x1x10' present dimensions" $
      calcTotalWrappingPaperNeeded "2x3x4\n1x1x10\n" `shouldBe` 101

  describe "Elves can calculate the total length of ribbon needed for a single present" $ do
    it "requires 34 feet of ribbon when given the '2x3x4' present dimension" $
      calcTotalRibbonNeeded "2x3x4" `shouldBe` 34

    it "requires 14 feet of ribbon when given the '1x1x10' present dimension" $
      calcTotalRibbonNeeded "1x1x10" `shouldBe` 14

    it "requires 0 feet of ribbon when given no present to wrap" $
      calcTotalRibbonNeeded "" `shouldBe` 0

  describe "Elves can calculate the total length of ribbon needed for a single present" $
    it "requires 48 feet of ribbon when given the '2x3x4' and '1x1x10' present dimensions" $
      calcTotalRibbonNeeded "2x3x4\n1x1x10\n" `shouldBe` 48
