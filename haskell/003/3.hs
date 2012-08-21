testNum = 600851475143000000000

primes = 2 : filter isPrime [3,5..]

isPrime n = n > 1 &&
              foldr (\p r -> p*p > n || ((n `rem` p) /= 0 && r))
                True primes

factors = [x | x <- [2..ceiling (sqrt testNum)], testNum `mod` x == 0, isPrime x]

main = putStrLn $ "Factors: " ++ show factors ++ "\n\n Maximum: " ++ show (maximum factors)

