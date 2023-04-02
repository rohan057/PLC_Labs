--Code for P1-T-d-i


sgn :: (Ord a, Num a) => a -> Int
sgn x   | x < 0 = -1
        | x == 0 = 0
        | otherwise = 1

main :: IO ()
main = do
putStrLn $ "The output for 10 is: " ++ show (sgn 10)
putStrLn $ "The output for 5 is: " ++ show (sgn 5)
putStrLn $ "The output for 0 is: " ++ show (sgn 0)
putStrLn $ "The output for -5 is: " ++ show (sgn (-5))



{-
main = do
    putStrLn "Welcome to the programme. Please enter your name"
    name <- getLine
    putStrLn("Hello " ++ name ++ ", hope you like Haskell.")
-}