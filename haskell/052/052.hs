import Data.List (sort)

conformingIntegers :: [Int]
conformingIntegers = [ x | x <- [1..], let digits = findDigits x 
					in findDigits (2 * x) == digits
					&& findDigits (4 * x) == digits 
					&& findDigits (5 * x) == digits 
					&& findDigits (6 * x) == digits] 

findDigits :: Int -> [Char]
findDigits x = sort (show x)

main :: IO ()
main = putStrLn $ show $ head conformingIntegers
