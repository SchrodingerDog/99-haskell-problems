module Functions where
    fib :: Int -> Int
    fib x
        | x > 1 = fib(x-1) + fib(x-2)
        | x == 0 = 0
        | x == 1 = 1
        | otherwise = error "Nie można"

    silnia :: Int -> Int
    silnia n
        | n == 0 = 1
        | n >= 1 = n * silnia(n-1)
        | otherwise = error "Liczba ujemna"

    binomial n k
        | k == 0 || k == n = 1
        | 0 < k && k < n = binomial (n-1) (k-1) + binomial (n-1) k
        | otherwise = error "wut"
    last' :: (Ord a) => [a] -> a
    last' [] = error ""
    last' [a] = a
    last' (x:xs) = last' xs

    lastButOne' :: (Ord a) => [a] -> a
    lastButOne' [] = error ""
    lastButOne' [a, _] = a
    lastButOne' (x:xs) = lastButOne' xs

    elementAt' :: (Ord a, Integral b) => [a] -> b -> a
    elementAt' (x:_) 1 = x
    elementAt' (_:xs) k = elementAt' xs (k-1)

    length' :: (Ord a, Integral b) => [a] -> b
    length' [] = 0
    length' (_:xs) = 1+ length' xs

    reverse' :: (Ord a) => [a] -> [a]
    reverse' [] = []
    reverse' (x:xs) = reverse' xs ++ [x]

    palindrome' :: (Eq a) => [a] -> Bool
    palindrome' [_] = True
    palindrome' (x:xs) = x == last xs && palindrome' (init xs)

    data Tree a = Leaf a | Node [Tree a]
    flatten' :: Tree a -> [a]
    flatten' (Leaf a) = [a]
    flatten' (Node xa) = concatMap flatten' xa