import Data.List (nub)

combinations :: [Integer]
combinations = [ a^b | a <- [2..100], b <- [2..100] ]

main :: IO ()
main = putStrLn $ show $ length $ nub combinations
