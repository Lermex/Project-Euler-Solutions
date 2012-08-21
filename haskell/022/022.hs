import Data.List (sort, elemIndex)
import Data.Char (toLower)

extract :: Maybe Int -> Int
extract (Just x) = x
extract Nothing = 0

alphabetPosition :: Char -> Int
alphabetPosition x = 1 + extract (elemIndex (toLower x) "abcdefghijklmnopqrstuvwxyz")

wordValue :: String -> Int
wordValue w = sum $ map alphabetPosition w 

parseText :: String -> [String]
parseText t = 	if (index > 0)
		then (tail (take (index - 1) t)) : parseText (drop (index + 1) t) 
		else filter (/='"') t : []
		where index = (extract (elemIndex ',' t))

main :: IO ()
main = do
	f <- readFile "names.txt"
	let sortedNames = sort (parseText f)
	let scores = map ( \x -> (wordValue x) * (extract (elemIndex x sortedNames) + 1) ) sortedNames
	putStrLn $ show $ sum scores
