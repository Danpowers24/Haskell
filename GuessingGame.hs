module Main where
import Text.Read
-- Write a function that compares the guess to the magic number

magic :: Int
magic = 77

adder :: Int -> Int
adder input = input + 1

comparer :: Int -> Int -> String
comparer input magic
  | input > magic = "your guess is too big fella"
  | input < magic = "your guess was too small"
  | input == magic = "you guessed correctly, you win!"
  | otherwise = "oops"

main :: IO ()
main = do
    let loopy = do
        putStrLn "guess a number"
        input <- getLine
        let maybeguess = readMaybe input
        putStrLn $ comparer guess magic
        if guess == magic then return () else loopy
    loopy
