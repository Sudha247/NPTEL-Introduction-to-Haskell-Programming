--List functions

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) = myReverse xs ++ [x]


myLast :: [a] -> a
myLast [x] = x
myLast (x:xs) = myLast xs

mySum :: [Int] -> Int
mySum [] = 0
mySum [x] = x
mySum (x:xs) = x + (mySum xs)
