sqr :: Int -> Int
sqr x = x*x

sqrList :: [Int] -> [Int]
sqrList [] = []
sqrList (x:xs) = (sqr x):(sqrList xs)
