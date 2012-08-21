series :: [Integer]
series = [ x^x | x <- [1..1000] ]

main :: IO ()
main = putStrLn $ show $ reverse $ take 10 $ reverse $ show $ sum series
