-- Find the second to last element of a list
myButLast:: [c] -> c 
-- Requires 2 or more elments
myButLast xs = getSecondElement 0 (reverse xs) 
    where getSecondElement 1 (x:xs) = x 
          getSecondElement n (x:xs) = getSecondElement (n + 1) xs 


-- Alternative way
myButLast' :: [c] -> c
myButLast' = last . init 

-- Alternative way
myButLast'' :: [c] -> c 
-- use !! as an index operator
myButLast'' xs = reverse xs !! 1