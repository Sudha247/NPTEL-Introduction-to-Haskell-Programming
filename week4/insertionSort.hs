insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x (y:ys)
    | (x <= y) = x:y:ys
    | otherwise = y:(insert x ys)

isort :: [Int] -> [Int]
isort [] = []
isort(x:xs) = insert x (isort xs)
