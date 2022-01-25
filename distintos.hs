verifica :: [Integer] -> Integer -> Bool -> Bool
verifica [] n bool = True
verifica (n:m) i True = verifica m n False
verifica (n:m) posAtual False
    | (n == posAtual) = False
    | otherwise = verifica m posAtual False

verificaTodasPosicoes :: [Integer] -> Bool
verificaTodasPosicoes [] = True
verificaTodasPosicoes (n:m)
    | (verifica (n:m) 0 True) = verificaTodasPosicoes m
    | otherwise = False

distintos :: [Integer] -> Bool
distintos [] = True
distintos (n:m) = verificaTodasPosicoes (n:m)

