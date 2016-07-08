module Anca.Text where

import Anca.Pipe

import Data.Char
import qualified Numeric as N





showHex :: (Integral a,Show a) => Char -> Int -> a -> String
showHex fill width value = ((replicate width fill) ++ N.showHex value "") |> reverse |> take width |> reverse

showHex0 = showHex '0'


readHexStr :: (Integral a) => String -> [a]
readHexStr [] = []
readHexStr (t:xs) 
        | isSpace t = readHexStr xs
readHexStr (x:y:xs) = fst (head (N.readHex [x,y])) : readHexStr xs
