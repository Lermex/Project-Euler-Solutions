rightTriangles :: Int -> [(Int, Int, Int)]
rightTriangles p = 	if (p `mod` 2 == 0) 
			then [ (x, y, z) | 
				z <- [1..maxSide], 
				y <- [(p - z - maxSide)..z], 
				x <- [(p - z - y)..y], 
				
				x > 0, 
				x + y + z == p, 
				x^2 + y^2 == z^2] 
			else []
			where maxSide = p `div` 2

solutionsPerPerimeter :: [Int]
solutionsPerPerimeter = map (length . rightTriangles) [3, 6..1000]

main :: IO ()
main = putStrLn $ show $ maximum solutionsPerPerimeter
