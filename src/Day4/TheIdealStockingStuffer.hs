module Day4.TheIdealStockingStuffer
    ( mineAdventCoin
    ) where

import           Data.Digest.Pure.MD5

mineAdventCoin :: String -> Int
mineAdventCoin s = take 1 [ i | i <- [1..], take 5 (md5 s:show i) == "00000"]
