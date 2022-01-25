existe :: Integer -> [Integer] -> Bool
existe n [] = False
existe n(m:x)
    | n == m = True
    | otherwise = existe n x

disjuntas :: [Integer] -> [Integer] -> Bool
disjuntas [][] = True
disjuntas [](i:j) = True
disjuntas (n:m)[] = True
disjuntas (n:m) (i:j)
    | ( (existe n j) || (existe i m) ) = False
    | otherwise = disjuntas m (i:j)

