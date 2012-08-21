primes = 2 : filter isPrime [3,5..]

isPrime n = n > 1 &&
              foldr (\p r -> p*p > n || ((n `rem` p) /= 0 && r))
                True primes

main = putStrLn $ show $ (primes !! 10000) 
