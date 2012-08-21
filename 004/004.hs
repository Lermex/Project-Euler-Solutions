threeDigitNums = [ a * b | a <- [999,998..900], b <- [999,998..900]]

palindromicNumber = head (dropWhile notPalindromic threeDigitNums)

notPalindromic x = not (isPalindromic x)

isPalindromic :: Integer -> Bool
isPalindromic x =  left == right || left == right * 10 || left == right * 100
		where
			left = x `div` 1000
			right =  (floor (fromIntegral (x `mod` 10))) * 100 + (floor (fromIntegral (x `mod` 100 `div` 10))) * 10 + (floor (fromIntegral (x `mod` 1000 `div` 100))) 

main = putStrLn $ show palindromicNumber 
