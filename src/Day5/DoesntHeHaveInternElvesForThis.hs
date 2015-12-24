module Day5.DoesntHeHaveInternElvesForThis
    ( countNiceStrings
    ) where

import Data.List as L
import Data.List.Split as S

-- countNiceStrings :: String -> Int
-- countNiceStrings = undefined -- filter doesNotContainDisallowedStrings . filter containsAtLeastOneLetterThatAppearsTwiceInARow . filter hasAtLeastThreeVowels $ S.splitOn "\n" input
--
-- isNice :: String -> Bool
-- isNice = undefined --filter doesNotContainDisallowedStrings . containsAtLeastOneLetterThatAppearsTwiceInARow . hasAtLeastThreeVowels

hasAtLeastThreeVowels :: String -> Bool
hasAtLeastThreeVowels s = (L.length . filter isVowel s) >= 3

isVowel :: Char -> Bool
isVowel c
    | c == 'a' = true
    | c == 'e' = true
    | c == 'i' = true
    | c == 'o' = true
    | c == 'u' = true
    | otherwise = false

containsAtLeastOneLetterThatAppearsTwiceInARow :: String -> Bool
containsAtLeastOneLetterThatAppearsTwiceInARow = undefined

doesNotContainDisallowedStrings :: String -> Bool
doesNotContainDisallowedStrings = undefined
