module Day2.IWasToldThereWouldBeNoMathSpec (main, spec) where

import           Test.Hspec
import           Test.QuickCheck

import           Day2.IWasToldThereWouldBeNoMath

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "calcBoxSurfaceArea" $ do
    it "returns the surface area of a rectangular cuboid" $ property $ do
      \a b c -> calcBoxSurfaceArea a b c == (a * b) + (a * b) + (a * c) + (a * c) + (b * c) + (b * c)
