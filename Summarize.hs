module Summarize (summarize) where

import qualified Data.Map as M

import Categorize (bestCategories)
import Sentence (segment)
import Utils (splitWords, bigram_s)

import Category1Gram (onegrams)
import Category2Gram (twograms)

scoreSentenceHelper words scoreMap = -- just use 1grams for now
  foldl (+) 0 $ map (\word ->  M.findWithDefault 0.0 word scoreMap) words

safeLookup key alist =
  let x = lookup key alist in
  case x of
    Just v -> v
    Nothing -> 0
 
scoreSentenceByBestCategories words catDataMaps bestCategories =
  map (\(category, aMap) -> 
        (category, (safeLookup category bestCategories) * 
                   (scoreSentenceHelper words aMap))) catDataMaps

scoreForSentence words catDataMaps bestCategories =  
  foldl (+) 0 $ map (\(cat, val) -> val) $ scoreSentenceByBestCategories words catDataMaps bestCategories

summarize s =
  let words = splitWords s;
      bestCats = bestCategories words;
      sentences = segment s;
      result1grams = map (\sentence -> (sentence, scoreForSentence (splitWords sentence) onegrams bestCats)) 
                     sentences;
      result2grams = map (\sentence ->
                           (sentence, scoreForSentence (bigram_s (splitWords sentence)) twograms bestCats)) 
                     sentences in
  filter (\(sentence, score) -> score > 10) $
  M.toList $ M.unionWith (+) (M.fromList result1grams) (M.fromList result1grams)
  
main = do     
  let s = "The sport of hocky is about 100 years old by ahdi dates. American Football is a newer sport. Programming is fun. Congress passed a new budget that might help the economy."
  print $ summarize s