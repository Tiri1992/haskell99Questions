isPalindrome :: (Eq a) => [a] -> Bool 
isPalindrome [] = True 
isPalindrome [x] = True 
isPalindrome xss = (head xss == last xss) && isPalindrome (tail (init xss))