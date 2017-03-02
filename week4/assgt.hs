import Data.List

repl :: String -> String
repl "" = ""
repl (x:xs) = x:x:repl(xs)


remChamp :: [Int] -> [Int]
remChamp [] = []
remChamp [x] = []
remChamp (x:xs)
   | x == (reverse(sort (x:xs)) !! 0) = xs
   | otherwise = x:remChamp(xs)


remDup :: [Int] -> [Int]
remDup [] = []
remDup (x:xs) = x : remDup (filter (/= x) xs)


remRunnerUp :: [Int] -> [Int]
remRunnerUp [x] = [x]
remRunnerUp [] = []
remRunnerUp (x:xs) 
    | x == (reverse(sort (x:xs)) !! 1) = xs
    | otherwise = x:(remRunnerUp xs)
