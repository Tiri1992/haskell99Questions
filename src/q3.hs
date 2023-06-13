--Find the Kth element of a list 
elementAt :: [c] -> Int -> c 
elementAt _ 0 = error "First element starts at 1."
elementAt xss n = xss !! (n - 1)


elementAt' :: (Eq t, Num t) => [a] -> t -> a
elementAt' xs n = getKthElement xs n 0 
    where getKthElement (x:xs) n t | n == (t + 1) = x  
                                   | n == 0 = error "First element in list is number 1."
                                   | otherwise = getKthElement xs n (t + 1)