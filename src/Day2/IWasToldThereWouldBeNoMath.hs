module Day2.IWasToldThereWouldBeNoMath (calcBoxSurfaceArea) where

calcBoxSurfaceArea :: Int -> Int -> Int -> Int
calcBoxSurfaceArea a b c = (2 * a * b) + (2 * a * c) + (2 * b * c)
