-- | Main entry point to the application.
module Main where

import Functions

-- | The main entry point.
main :: IO ()
main = do
    putStrLn "Welcome to FP Haskell Center!"
    putStrLn "Have a good day!"
    print (fib 5)
    print (silnia 10)
    print (binomial 2 2)
    print (last' [1, 2 ..15] )
    print (lastButOne' [1, 2 ..15] )
    print (elementAt' [1..100] 100)
    print (length' "Kamil")
    --reverse