-- Reverse a list
myReverse :: [a] -> [a]
-- Base case, empty list is already reversed
myReverse [] = []
-- Accumulate in reverse
myReverse (x:xs) = myReverse xs ++ [x]


-- Alternative versions
myReverse' :: [a] -> [a]
myReverse' list = reverse' list []
    -- Helper reverse' tracks two lists, the initial and the reversed
    -- This solution avoids reconsing the result (i.e. concatenating lists) which is expensive
    where reverse':: [a] -> [a] -> [a]
          reverse' [] reversed = reversed 
          reverse' (x:xs) reversed = reverse' xs (x:reversed)
      
-- (\x xs -> xs:x) [1,2,3]
-- (2:(1:[])) etc
myReverse'' :: [a] -> [a]
myReverse'' = foldl (\x xs -> xs:x) []