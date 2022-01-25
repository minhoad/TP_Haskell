somaImpares::[Integer]->Integer
somaImpares [] = 0
somaImpares (x:y)
  | (x `mod` 2 == 0) = somaImpares y -- se é par não soma, e chama de novo a função somaImpare
  | otherwise = x + somaImpares y -- se for impar ai soma

