
module Main where

-- This program counts the number of positive, negative and zeros in a list

-- These functions are utilizing the filter method 
    -- filter :: (Int -> Bool) -> [Int] -> [Int]

posfilter :: [Int] -> [Int]
posfilter = filter (>0)

negfilter :: [Int] -> [Int]
negfilter = filter (<0)

zerofilter :: [Int] -> [Int]
zerofilter = filter (==0)

count :: [Int]->[Int]
count list = [pos,neg,zero] where
    pos = length $ posfilter list
    neg = length $ negfilter list
    zero = length $ zerofilter list 
main :: IO ()

main = do
    print $ count [1,2,3,-7,0,4,5]
    print $ (-) 7 0
