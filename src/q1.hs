-- Find the last element of a list
myLast :: [c] -> c 
myLast [] = error "Empty list"
myLast (x:xs) | null xs = x 
                   | otherwise = myLast xs



