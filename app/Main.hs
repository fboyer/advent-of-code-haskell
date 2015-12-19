module Main where

import           Day1.NotQuiteLisp
import           Day2.IWasToldThereWouldBeNoMath

main :: IO ()
main = do
  input_day1 <- readFile "./input/Day1/input.txt"
  print (followInstructions input_day1)
  print (findBasement input_day1)
  input_day2 <- readFile "./input/Day2/input.txt"
  print (calcTotalWrappingPaperNeeded input_day2)
