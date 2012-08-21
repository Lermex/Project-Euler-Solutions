fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fibs2 = [x | x <- takeWhile (<4000000) fibs, even x]

main = putStrLn $ show (sum fibs2)

