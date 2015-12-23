module Day3.PerfectlySphericalHousesInAVacuum
    ( deliverPresents
    ) where

import           Data.List as L

data Point = Point { x :: Int
                   , y :: Int
                   } deriving (Eq, Show)

deliverPresents :: String -> Int
deliverPresents = L.length . L.nub . reverse . L.foldl' (\h dir -> move (head h) dir:h) [Point 0 0]

move :: Point -> Char -> Point
move point dir
  | dir == '^' = Point (x point) (y point + 1)
  | dir == 'v' = Point (x point) (y point - 1)
  | dir == '>' = Point (x point + 1) (y point)
  | dir == '<' = Point (x point - 1) (y point)
  | otherwise = point
