intercalar:: [Integer] -> [Integer] -> [Integer]
intercalar [] [] = []
intercalar (a:x) [] = [a] ++ intercalar x []
intercalar [] (b:y) = [b] ++ intercalar [] y
intercalar (a:x) (b:y)
  | (a > b) = [b] ++ [a] ++ intercalar x y
  | otherwise = [a] ++ [b] ++ intercalar x y

