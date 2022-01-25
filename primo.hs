primo:: Integer -> Bool
primo x
    | (x <= 1)   = False -- 0 e 1 não são primos
    |otherwise = (verificaPrimo x 2 == x)

verificaPrimo :: Integer -> Integer -> Integer
verificaPrimo  x y
 | (x`mod`y == 0) = y
 | (y*2 > x) = x
 | otherwise = verificaPrimo  x (y+1)
 
