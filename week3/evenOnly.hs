even_only :: [Int] -> [Int]
even_only [] = []
even_only (x:xs)
    |is_even x = x:(even_only xs)
    |otherwise = even_only xs

    where 
    	is_even :: Int -> Bool
    	is_even x = (mod x 2) == 0
