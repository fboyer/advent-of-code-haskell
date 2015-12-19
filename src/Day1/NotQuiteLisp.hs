module Day1.NotQuiteLisp (followInstructions, findBasement) where

import           Data.List

followInstructions :: String -> Int
followInstructions = foldl' (\f i -> followInstruction f i) 0

followInstruction :: Int -> Char -> Int
followInstruction f i =
  case i of
    '(' -> f + 1
    ')' -> f - 1
    otherwise -> f

findBasement :: String -> Maybe Int
findBasement = findBasement' 0

findBasement' :: Int -> String -> Maybe Int
findBasement' n i
  | n > length i = Nothing
  | otherwise =
    case followInstructions (take n i) of
      -1 -> Just n
      otherwise -> findBasement' (n + 1) i
