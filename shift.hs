desloca:: [Integer] -> [Integer]
desloca [] = []
desloca (x:y) = y ++ [x]

shift:: Integer -> [Integer] -> [Integer]
shift _ [] = [] 
shift 0 x = x
shift n x = (shift (n-1) (desloca x))

