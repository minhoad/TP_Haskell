substituir:: Integer -> Integer -> [Integer] -> [Integer]
substituir a b [] = []
substituir a b (x:y)
  | (a == x) = [b]++ substituir a b y -- caso a for igual x, o item iterado atualmente, adicionamos b a array que retornaremos
  | otherwise = [x]++ substituir a b y -- caso não for igual, adicionamos x mesmo, ou seja, nesse caso não alterariamos a array antiga, pois não é o item que queremos substituir

