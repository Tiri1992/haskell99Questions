-- Transform a list, possibly holding lists as elements into a flat list by replacing each list with its elements (recursively)
-- Example: flatten (List [Elem 1, Elem 2, List [Elem 4, Elem 5]])
data NestedList a = Elem a | List [NestedList a]


-- Return type must be a list containing the same type variable
flatten :: NestedList a -> [a]
-- Base case, single element, we create a list with that single element to return
flatten (Elem a) = [a]
-- Discovered a nested list, we unpack by recursively calling and concatenating
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List []) = []

-- Alternative: Reconstruct new list from nested list, acts like concatMap
-- type variable a here is either Elem a or List a. As defined in the data type NestedList above.
flatten' :: NestedList a -> [a]
flatten' a = flt' a []
    where flt' (Elem x) xs = x:xs
          flt' (List (x:xs)) xss = flt' x (flt' (List xs) xss)
          flt' (List []) xss = xss 
