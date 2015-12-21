module Day2.IWasToldThereWouldBeNoMath
    ( Dim(Dim)
    , calcTotalWrappingPaperNeeded
    , calcTotalRibbonNeeded
    ) where

import           Data.List
import           Data.List.Split
import           Data.Maybe

data Dim = Dim { w :: Int
               , h :: Int
               , d :: Int
               } deriving (Eq, Show)

parseInput :: String -> [Dim]
parseInput text = mapMaybe (toDim . parseLine) (splitLines text)

splitLines :: String -> [String]
splitLines = splitOn "\n"

parseLine :: String -> [Int]
parseLine line = map read $ splitOn "x" line

toDim :: [Int] -> Maybe Dim
toDim [w, h, d] = Just (Dim w h d)
toDim _ = Nothing

calcTotalWrappingPaperNeeded :: String -> Int
calcTotalWrappingPaperNeeded text = foldl' (\t d -> t + calcWrappingPaperNeeded d) 0 (parseInput text)

calcWrappingPaperNeeded :: Dim -> Int
calcWrappingPaperNeeded dim = calcSurfaceArea dim + calcSmallestSurfaceArea dim

calcSurfaceArea :: Dim -> Int
calcSurfaceArea dim = (2 * w dim * h dim) + (2 * w dim * d dim) + (2 * h dim * d dim)

calcSmallestSurfaceArea :: Dim -> Int
calcSmallestSurfaceArea dim = product $ getTwoShortestSides dim

getTwoShortestSides :: Dim -> [Int]
getTwoShortestSides dim = take 2 $ sort [w dim, h dim, d dim]

calcTotalRibbonNeeded :: String -> Int
calcTotalRibbonNeeded text = foldl' (\t d -> t + calcRibbonNeeded d) 0 (parseInput text)

calcRibbonNeeded :: Dim -> Int
calcRibbonNeeded dim = calcSmallestPerimeter dim + calcVolume dim

calcSmallestPerimeter :: Dim -> Int
calcSmallestPerimeter dim = (*) 2 $ sum $ getTwoShortestSides dim

calcVolume :: Dim -> Int
calcVolume dim = w dim * h dim * d dim
