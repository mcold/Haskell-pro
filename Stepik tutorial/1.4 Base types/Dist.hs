module Dist where

dist :: (Double, Double) -> (Double, Double) -> Double
dist p1 p2 =  sqrt $ (fst p1 - fst p2) * (fst p1 - fst p2) + (snd p1 - snd p2) * (snd p1 - snd p2)  