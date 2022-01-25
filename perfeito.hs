perfeito :: Integer -> Bool
perfeito 0 = False
perfeito n
    | (n == somaDivisores n (n-1)) = True
    | otherwise = False

somaDivisores :: Integer -> Integer -> Integer
somaDivisores x 0 = 0
somaDivisores x divisor
    | ( (x `rem` divisor) == 0 ) = divisor + somaDivisores x (divisor-1)
    | otherwise = somaDivisores x (divisor-1)
    
