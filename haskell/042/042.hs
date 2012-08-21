import Data.List (elemIndex, elem)
import Data.Char (toLower)

triangleNumber :: Int -> Int
triangleNumber n = sum [1..n] 

triangleNumbers :: [Int]
triangleNumbers = map triangleNumber [1..1000]

alphabetPosition :: Char -> Int
alphabetPosition x = 1 + extract (elemIndex (toLower x) "abcdefghijklmnopqrstuvwxyz")

extract :: Maybe Int -> Int
extract (Just x) = x
extract Nothing = 0

wordValue :: String -> Int
wordValue w = sum $ map alphabetPosition w 

parseText :: String -> [String]
parseText t = 	if (index > 0)
		then (tail (take (index - 1) t)) : parseText (drop (index + 1) t) 
		else []
		where index = (extract (elemIndex ',' t))

main :: IO ()
main = do
	f <- readFile "words.txt"
	let triangleWords = [ w | w <- parseText f, elem (wordValue w) triangleNumbers]
	putStrLn $ show $ length triangleWords 
