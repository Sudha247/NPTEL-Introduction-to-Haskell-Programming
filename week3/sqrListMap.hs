sqr :: Int -> Int
sqr x = x*x

sqrListMap :: [Int] -> [Int]
sqrListMap xs = map sqr xs
