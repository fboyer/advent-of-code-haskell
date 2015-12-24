module Day4.TheIdealStockingStufferSpec (main, spec) where

import           Test.Hspec

import           Day4.TheIdealStockingStuffer

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "Santa can mine some AdventCoin to use as gifts" $ do
    it "finds the lowest value of '609043' when given 'abcdef' as a secret key" $
      mineAdventCoin 5 "abcdef" `shouldBe` 609043

    it "finds the lowest value of '1048970' when given 'pqrstuv' as a secret key" $
      mineAdventCoin 5 "pqrstuv" `shouldBe` 1048970
