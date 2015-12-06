module Day1.NotQuiteLisp (getFloor, findBasementIndex) where

import           Data.List

getFloor :: String -> Int
getFloor = foldl' (\floor dir -> if dir == '(' then floor + 1 else floor - 1) 0

findBasementIndex :: Int -> String -> Int
findBasementIndex index input =
  case getFloor (take index input) of
    -1 -> index
    otherwise -> findBasementIndex (index + 1) input
