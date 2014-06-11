module Utils (splitWords, bigram, bigram_s, splitWordsKeepCase, trigram, trigram_s) where

import Data.Char (toLower)

splitWords :: String -> [String]
splitWords = words . map (\c -> if elem c ".,;:!\n\t\"" then ' ' else toLower c)

bigram :: [a] -> [[a]]
bigram [] = []
bigram [_] = []
bigram xs = take 2 xs : bigram (tail xs)

bigram_s xs = [ (a !! 0) ++ " " ++ (a !! 1) | a <- bigram xs] 

splitWordsKeepCase :: String -> [String]
splitWordsKeepCase = words . map (\c -> if elem c ".,;:!\n\t\"" then ' ' else c)

trigram :: [a] -> [[a]]
trigram [] = []
trigram [_] = []
trigram [_,_] = []
trigram xs = take 3 xs : trigram (tail xs)

trigram_s xs = [ (a !! 0) ++ " " ++ (a !! 1) ++ " " ++ (a !! 2) | a <- trigram xs] 

