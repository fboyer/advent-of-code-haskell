module Day3.PerfectlySphericalHousesInAVacuumSpec (main, spec) where

import           Test.Hspec

import           Day3.PerfectlySphericalHousesInAVacuum

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Santa can deliver presents going from house to house following the elf back north instructions" $ do
    it "delivers presents to 2 houses when given the '>' instruction" $
      visitHouses ">" `shouldBe` 2

    it "delivers presents to 4 houses when given the '^>v<' instructions" $
      visitHouses "^>v<" `shouldBe` 4

    it "delivers presents to 2 houses when given the '^v^v^v^v^v' instructions" $
      visitHouses "^v^v^v^v^v" `shouldBe` 2

    it "delivers presents to 1 house when given no instructions" $
      visitHouses "" `shouldBe` 1

  describe "Santa and Robo-Santa can alternate delivering presents going from house to house following the elf back north instructions" $ do
    it "deliver presents to 3 houses when given the '^v' instructions" $
      visitHouses' "^v" `shouldBe` 3

    it "deliver presents to 3 houses when given the '^>v<' instructions" $
      visitHouses' "^>v<" `shouldBe` 3

    it "deliver presents to 11 houses when given the '^v^v^v^v^v' instructions" $
      visitHouses' "^v^v^v^v^v" `shouldBe` 11
