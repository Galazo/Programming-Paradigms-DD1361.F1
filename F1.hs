module F1 where
import Data.Char
 
--1 Fibonacci-talen Uppgift Skriv en funktion fib som tar ett heltal n och returnerar F(n). 
 
fib :: Integer -> Integer
fib (n)
   | n < 2 = n
   | otherwise = fib (n-1) + fib (n-2)
 
-- 2 Rövarspråket I rövarspråket dubblerar man alla konsonanter och lägger ett “o” emellan, se exempel nedan. 
 
ickeVokal :: Char -> Bool
ickeVokal x = x `notElem` "aeiouy"      --"aeiouy" abbreviation for ['a','e','i','o','u','y']
 
rovarsprak :: String -> String
rovarsprak [] = []                      --Basfall! tom lista "en sträng är en Charlist"
rovarsprak (x:xs)
    | ickeVokal  x   = x:'o': x: rovarsprak xs
    | otherwise      = x: rovarsprak xs 
    
karpsravor :: String -> String
karpsravor [] = []                     --Basfall! tom list
karpsravor (x:xs)
    | ickeVokal x     = x: karpsravor(tail(tail xs))      -- (karpsravor .tail .tail) xs = karpsravor(tail(tail(xs)))
    | otherwise       = x: karpsravor xs
 
--3 Medellängd Uppgift Skriv en funktion medellangd som tar en text (String) som indata och returnerar ett tal (Double) 
 
medellangd :: String -> Double
medellangd s =  fromIntegral (sum listan) / fromIntegral (length listan)
  where listan = map length (words (orddelare s))               
-- words breaks a string up into a list of words, which were delimited by white space.
 
orddelare :: String -> String
orddelare [] = []                         --Basfall! tom lista
orddelare (x:xs)
   | isAlpha x  = x: orddelare xs         -- är Alphabet? true insert x och fortsätter med nästan
   | otherwise  = ' ': orddelare xs       --              false insert ' ' och fortsätter med nästan
 
varN :: Int -> [a] -> [a]
varN n [] = []
varN n s  = head s : varN n (drop n s) 
 
skyffla :: [a] -> [a]
skyffla [] = []
skyffla s  = varN 2 s ++ skyffla (varN 2 (tail s))  -- skyffla (varN 2 (tail s)) = (skyffla . varN 2 . tail) s
