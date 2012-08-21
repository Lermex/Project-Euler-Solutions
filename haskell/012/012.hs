triangleNumber :: Integer -> Integer
triangleNumber n = sum [1..n] 

triangleNumbers :: [Integer]
triangleNumbers = map triangleNumber [1..]

countFactors :: Integer -> Int
countFactors n = 2 * length ( 1 : [ x | x <- [2..floor ((sqrt . fromIntegral) n)], n `mod` x == 0] )

main :: IO ()
main = putStrLn $ show $ head (dropWhile (\x -> (countFactors x) < 500) triangleNumbers)
