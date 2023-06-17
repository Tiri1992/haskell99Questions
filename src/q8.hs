-- Eliminate consecutive duplicates of list elements

-- [1, 1, 1, 2, 3]
-- 1 == 1 -> Dont count
-- [1,2,3] -> compare 1 == 2 -> we can add 1 to the new array

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:y:xss) | x /= y = x : compress (y:xss)
                   | otherwise = compress (y:xss)
