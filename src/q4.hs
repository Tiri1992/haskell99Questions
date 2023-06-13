-- Find the number of elements ina list
myLength :: [a] -> Int
myLength [] = 0 
myLength (x:xs) = 1 + myLength xs 

-- Using foldr
myLength' :: [a] -> Int 
-- foldr replaces base case with 0 and con with the aggregator (\x -> (+) 1) i.e. adds one each time for a count
myLength' = foldr (\ x -> (+) 1) 0
