
module Main where

posfilter= filter (>0)
negfilter= filter (<0)
zerofilter= filter (==0)

count :: [Int]->[Int]
count list = [pos,neg,zero] where
    pos=length $ posfilter list
    neg=length $ negfilter list
    zero=length $ zerofilter list 
main :: IO ()

main = do
    print $ count [1,2,3,-7,0,4,5]
    print $ (-) 7 0
