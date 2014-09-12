-- | Main entry point to the application.
module Main where

import Functions

-- | The main entry point.
main :: IO ()
main = do
    --Fibonacci
    print (fib 5)
    --Silnia
    print (silnia 10)
    --Symbol Newtona
    print (binomial 2 2)
    --Ostatni element
    print (last' [1, 2 ..15] )
    --Przedostatni element
    print (lastButOne' [1, 2 ..15] )
    --Element na pozycji
    print (elementAt' [1..100] 100)
    --Długość
    print (length' "Kamil")
    --Odwróć
    print (reverse' [1, 2..5])
    --Palindrom
    print (palindrome' "eevee")
    --Spłaszcz
    print (flatten' (Leaf 5) )
    print (flatten' (Node [Leaf 1, Leaf 2]))
    print (flatten' (Node [Leaf 1, Node [Leaf 2, Node [Leaf 3, Leaf 4], Leaf 5]]))
    --Skompresuj
    print (compress' "aaaabccaadeeee")
    print (compress' [1,1,1,2,2,1,1,4,3,1,1,2,5,1,2,3])
    --Spakuj
    print (pack' "aaaabccaadeeee")
    --Długość części
    print (encode' "aaaabccaadeeee")