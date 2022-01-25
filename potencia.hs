potencia:: Integer -> Integer-> Integer
potencia x y
  | (y >= 1) = x * potencia x (y-1) -- realiza as recursões x * x *... até y>=1
  | otherwise = 1


