module Day5.DoesntHeHaveInternElvesForThisSpec (main, spec) where

import           Test.Hspec

import           Day5.DoesntHeHaveInternElvesForThis

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "Santa can figure out which strings are naugthy or nice" $ do
    it "can tell that the string is nice when given the 'ugknbfddgicrmopn' string" $
      countNiceStrings "ugknbfddgicrmopn" `shouldBe` 1

    it "can tell that the string is nice when given the 'aaa' string" $
      countNiceStrings "aaa" `shouldBe` 1

    it "can tell that the string is naughty when given the 'jchzalrnumimnmhp' string" $
      countNiceStrings "jchzalrnumimnmhp" `shouldBe` 0

    it "can tell that the string is naughty when given the 'haegwjzuvuyypxyu' string" $
      countNiceStrings "haegwjzuvuyypxyu" `shouldBe` 0

    it "can tell that the string is naughty when given the 'dvszwmarrgswjxmb' string" $
      countNiceStrings "dvszwmarrgswjxmb" `shouldBe` 0
