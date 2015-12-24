module Day4.TheIdealStockingStuffer
    ( mineAdventCoin
    ) where

import           Data.Digest.Pure.MD5 (md5)
import qualified Data.ByteString.Lazy.Char8 as B

mineAdventCoin :: Int -> String -> Int
mineAdventCoin prefix secret = head $ filter (isValid . calcMD5Hash secret) [1..]
  where isValid dig = take prefix dig == replicate prefix '0'

calcMD5Hash :: String -> Int -> String
calcMD5Hash secret i = show . md5 . B.pack $ secret ++ show i
