binario :: Integer -> [Integer]
binario 0 = []
binario x = binario (x `div` 2) ++ [x `rem` 2]

