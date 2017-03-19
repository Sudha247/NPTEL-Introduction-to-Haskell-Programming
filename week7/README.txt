1. Define a function

largestPower :: Int -> Int -> Int

such that for a positive number n and a prime number p, 

largestPower n p

is the largest power of p that divides n! (factorial of n).

Examples:

largestPower 10 5 = 2
largestPower 10 2 = 8


2. Define a function

nohundred :: Int -> Int

such that for a positive number n 

nohundred n

is the nth positive number such that "100" does not occur as a substring in its binary expansion.

Examples:

nohundred 10 = 14
nohundred 100 = 367

3. Define an infinite list 

infList :: [Integer] 

with the following properties. 
	a) The list is in strictly increasing order
	b) The list begins with the number 1
	c) If the list contains the number x, it also contains 2x, 3x and 5x
	d) The list contains no other numbers

For example the first 20 elements of infList are [1,2,3,4,5,6,8,9,10,12,15,16,18,20,24,25,27,30,32,36].

Define a function 

infListElem :: Int -> Int

such that 

infListElem n 

returns the nth element of infList.

4. We consider strings formed using the two characters 'a' and 'b'. We want to list these strings in order, but there is a problem in the built-in order defined by Haskell. 
It makes "ab" < "b", "aab" < "ab", "aaab" < "aab" etc., so there is no first string, if we want to list them. So we define an alternate order, call it priorTo:

priorTo s1 s2 = length s1 < length s2 || (length s1 == length s2 && s1 < s2)

-- A string s is said to be abundant if there are at least two occurrences of "ab" in s. Define a function 

abundant :: Int -> String

such that 

abundant n

returns the nth abundant string according to the priorTo order.


Examples:

abundant 1 = "abab"
abundant 2 = "aabab"
abundant 5 = "ababb"
abundant 10 = "aababa"

5. Define a function

goodPrime :: Int -> Int

such that 

goodPrime n 

returns the smallest prime number p such that S > n, where S is the sum of the digits of p.

Examples:

goodPrime 4 = 5
goodPrime 10 = 29
goodPrime 15 = 79

6. Conway's look and say sequence is defined as follows:
	– Start off with 1.
	– If you read off the digits, you'd say one 1, so 11 is the next number.
	– Next you'd say two 1s, so 21 is the next.
	– Next up is 1211.
	– Then 111221, 312211, 13112221, 1113213211 etc.

Define a function 

las :: Int -> Integer

such that 

las n 

returns the first 4 digits of the nth look-and-see number. (Assume that 1 is the 0th look-and-say number.)

Examples:

las 0 = 1
las 5 = 3122
las 10 = 1113
