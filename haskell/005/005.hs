evenlyDivisible = [ x | x <- [20, 40 ..], x `mod` 2 == 0 && x `mod` 3 == 0 && x `mod` 4 == 0 && x `mod` 5 == 0 && x `mod` 6 == 0 && x `mod` 7 == 0 && x `mod` 8 == 0 && x `mod` 9 == 0 && x `mod` 10 == 0 && x `mod` 11 == 0 && x `mod` 12 == 0 && x `mod` 13 == 0 && x `mod` 14 == 0 && x `mod` 15 == 0 && x `mod` 16 == 0 && x `mod` 17 == 0 && x `mod` 18 == 0 && x `mod` 19 == 0 && x `mod` 20 == 0]

main = putStrLn $ show (head evenlyDivisible)  
