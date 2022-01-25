remove:: [Integer] -> [Integer]
remove [a] = []
remove (a:x) = [a] ++ remove x

removerFim:: Integer -> [Integer] -> [Integer]
removerFim _ [] = []
removerFim 0 x = x
removerFim n x = (removerFim (n-1) (remove x))

