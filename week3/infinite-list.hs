--infinite_list :: [Int]
infinite_list = inflistaux 0 
    where
    inflistaux :: Int -> [Int]
    inflistaux n = n:(inflistaux (n+1))
