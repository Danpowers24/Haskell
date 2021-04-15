module Main where
import Text.Printf (printf, vFmt)


askNumberOrQuit :: IO Integer
askNumberOrQuit = do
    readLn

guessNumber :: Integer -> IO ()
guessNumber secret = go 1 where
    go :: Integer -> IO()
    go tries = do
        guess <- askNumberOrQuit
        --let guess::Integer
        --   guess=2
        case compare guess secret of
            LT -> do
                print "Too low!"
                go $ tries+1
            GT -> do
                print "Too high!"
                go $ tries+1
            EQ -> do
                printf "You found the number in %d tries!\n" tries

main :: IO ()
main = do
    --x <- readLn
    --print $ lucky x
    guessNumber 10