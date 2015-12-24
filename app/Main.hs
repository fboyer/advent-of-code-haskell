module Main where

import           Day1.NotQuiteLisp
import           Day2.IWasToldThereWouldBeNoMath
import           Day3.PerfectlySphericalHousesInAVacuum
import Day4.TheIdealStockingStuffer

main :: IO ()
main = do
  input_day1 <- readFile "./input/Day1/input.txt"
  print (followInstructions input_day1)
  print (findBasement input_day1)
  input_day2 <- readFile "./input/Day2/input.txt"
  print (calcTotalWrappingPaperNeeded input_day2)
  print (calcTotalRibbonNeeded input_day2)
  input_day3 <- readFile "./input/Day3/input.txt"
  print (visitHouses input_day3)
  print (visitHouses' input_day3)
  input_day4 <- readFile "./input/Day4/input.txt"
  print (mineAdventCoin 5 $ init input_day4) -- init is used to trim the newline character that's automatically added by Atom at the end of the input file
  print (mineAdventCoin 6 $ init input_day4) -- init is used to trim the newline character that's automatically added by Atom at the end of the input file
