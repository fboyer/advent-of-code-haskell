module Day3.PerfectlySphericalHousesInAVacuum
    ( visitHouses
    , visitHouses'
    ) where

import           Data.List as L

data Point = Point { x :: Int
                   , y :: Int
                   } deriving (Eq, Show)

visitHouses :: String -> Int
visitHouses = L.length . L.nub . deliverPresents

move :: Point -> Char -> Point
move point dir
  | dir == '^' = Point (x point) (y point + 1)
  | dir == 'v' = Point (x point) (y point - 1)
  | dir == '>' = Point (x point + 1) (y point)
  | dir == '<' = Point (x point - 1) (y point)
  | otherwise = point

visitHouses' :: String -> Int
visitHouses' i = L.length . L.nub $ deliverPresents (santasRun i) ++ deliverPresents (roboSantasRun i)

deliverPresents :: String -> [Point]
deliverPresents = L.foldl' (\h dir -> move (head h) dir:h) [Point 0 0]

santasRun :: String -> String
santasRun [] = []
santasRun [x] = [x]
santasRun (x:_:xs) = x:santasRun xs

roboSantasRun :: String -> String
roboSantasRun [] = []
roboSantasRun [_] = []
roboSantasRun (_:x:xs) = x:roboSantasRun xs
