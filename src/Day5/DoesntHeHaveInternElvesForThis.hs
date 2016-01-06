module Day5.DoesntHeHaveInternElvesForThis
    ( countNiceStrings
    ) where

import Data.List as L
import Data.List.Split as S

countNiceStrings :: String -> Int
countNiceStrings = undefined -- filter doesNotContainDisallowedStrings . filter containsAtLeastOneLetterThatAppearsTwiceInARow . filter hasAtLeastThreeVowels $ S.splitOn "\n" input

isNice :: String -> Bool
isNice = undefined -- filter doesNotContainDisallowedStrings . containsAtLeastOneLetterThatAppearsTwiceInARow . hasAtLeastThreeVowels

hasAtLeastThreeVowels :: String -> Bool
hasAtLeastThreeVowels s = (L.length . filter isVowel $ s) >= 3

isVowel :: Char -> Bool
isVowel c
    | c == 'a' = True
    | c == 'e' = True
    | c == 'i' = True
    | c == 'o' = True
    | c == 'u' = True
    | otherwise = False

containsAtLeastOneLetterThatAppearsTwiceInARow :: String -> Bool
containsAtLeastOneLetterThatAppearsTwiceInARow [] = False
containsAtLeastOneLetterThatAppearsTwiceInARow [_] = False
containsAtLeastOneLetterThatAppearsTwiceInARow (x:y:ys)
  | x == y = True
  | otherwise = containsAtLeastOneLetterThatAppearsTwiceInARow (y:ys)

doesNotContainDisallowedStrings :: String -> Bool
doesNotContainDisallowedStrings s
  | "ab" `isInfixOf` s = False
  | "cd" `isInfixOf` s = False
  | "pq" `isInfixOf` s = False
  | "xy" `isInfixOf` s = False
  | otherwise = True
