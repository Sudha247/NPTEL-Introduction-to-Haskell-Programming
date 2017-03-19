import Data.List

largestPower :: Int -> Int -> Int
largestPower _ 0 = 0
largestPower n p = largestPower1 n p 1
 where
 largestPower1 :: Int -> Int -> Int -> Int
 largestPower1 n p x
  | (p^x)>n = 0
  | otherwise = (div n (p^x)) + largestPower1 n p (x+1)
 
nohundred :: Int -> Int
nohundred 0 = 0
nohundred num = [ x | x <- [1..], checknh (toBin x) ]!!(num-1)
 where
 checknh :: String -> Bool
 checknh n
  | (length n) < 3 = True
  | (take 3 (dropWhile (=='0') n)) == "100" = False
  | otherwise = checknh (tail (dropWhile (=='0') n))
 toBin :: Int -> String
 toBin 0 = ['0']
 toBin 1 = ['1']
 toBin n
  | n `mod` 2 == 0 = toBin (n `div` 2) ++ ['0']
  | otherwise = toBin (n `div` 2) ++ ['1']
infList :: [Int]
infList = (nextList [1] 100) ++ [1..]
 where
 nextList :: [Int] -> Int -> [Int]
 nextList l n
  | (length l) > n*3 = l
  | otherwise = nextList (sort (nub (l ++ into2 ++ into3 ++ into5))) n 
   where
   into2 = map (*2) l
   into3 = map (*3) l
   into5 = map (*5) l

infListElem :: Int -> Int
infListElem n = (nextList [1] n)!!n
 where
 nextList :: [Int] -> Int -> [Int]
 nextList l n
  | (length l) > n*3 = l
  | otherwise = nextList (sort (nub (l ++ into2 ++ into3 ++ into5))) n 
   where
   into2 = map (*2) l
   into3 = map (*3) l
   into5 = map (*5) l

abundant :: Int -> String
abundant n = abstr!!(n-1)
 where
 abstr :: [String]
 abstr = [x|x<-allCombos,(countab x) >1]
 allCombos :: [String]
 allCombos = concatMap (combos ['a','b']) [1,2..]
 countab :: String->Int
 countab []=0
 countab [x]=0
 countab (y:ys)
  |y=='a' && head ys=='b' = countab (tail ys) +1
  |otherwise = countab ys
 combos :: [Char] -> Int -> [String]
 combos chars 1 = map (:[]) chars
 combos chars n = concatMap (\front -> map (front ++) (combos chars 1)) $ combos chars (n - 1)

goodPrime :: Int -> Int
goodPrime n = head [x|x<-primes,(sumofdig x)>n]
 where
 sumofdig :: Int -> Int
 sumofdig n
  |n<10 = n
  |otherwise = (mod n 10) + sumofdig (div n 10)
 primes :: [Int]
 primes = sieve [2..]
  where
    sieve (y:ys) = y : sieve [x|x <- ys, (mod x y) > 0]

las :: Int -> Int
las x = read (take 4 ((iterate n "1")!!x)) :: Int
 where
 n = concatMap (\x -> (show $ length x) ++ [head x]) . group


priorTo::String->String->Bool
priorTo s1 s2 = (length s1 < length s2) || ((length s1 == length s2) && (s1 < s2))
main = do
	prob <- readLn :: IO Int
	case prob of
		1 -> do
			(n,p) <- readLn :: IO (Int,Int)
			putStrLn . show $ largestPower n p
	  	2 -> do
			n <- readLn :: IO (Int)
			putStrLn . show $ nohundred n
		3 -> do
			n <- readLn :: IO (Int)
			putStrLn . show $ infListElem n
		4 -> do
			n <- readLn :: IO (Int)
			putStrLn . show $ abundant n
		5 -> do
			n <- readLn :: IO (Int)
			putStrLn . show $ goodPrime n
		6 -> do
			n <- readLn :: IO (Int)
			putStrLn . show $ las n
