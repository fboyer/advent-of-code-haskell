module Day3.PerfectlySphericalHousesInAVacuumSpec (main, spec) where

import           Test.Hspec

import           Day3.PerfectlySphericalHousesInAVacuum

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Santa can deliver go from house to house following the elf back north instructions" $ do
    it "delivers presents to 2 houses when given the '>' instruction" $
      deliverPresents ">" `shouldBe` 2

    it "delivers presents to 4 houses when given the '^>v<' instructions" $
      deliverPresents "^>v<" `shouldBe` 4

    it "delivers presents to 2 houses when given the '^v^v^v^v^v' instructions" $
      deliverPresents "^v^v^v^v^v" `shouldBe` 2

    it "delivers presents to 1 house when given no instructions" $
      deliverPresents "" `shouldBe` 1
