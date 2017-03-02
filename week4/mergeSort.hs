merge :: [Int] -> [Int] -> [Int]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | (x <= y) = x:(merge xs (y:ys))
    | otherwise = y:(merge (x:xs) ys)


mergesort :: [Int] -> [Int]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort (front xs)) (mergesort (back xs))
	where 
		front xs = take ((length xs) `div` 2) xs
		back xs = drop ((length xs) `div`2) xs
