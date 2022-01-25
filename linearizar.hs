linearizar :: [[Integer]] -> [Integer]
linearizar [] = []
linearizar (x:y) = x ++ linearizar y

