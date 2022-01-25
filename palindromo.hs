inverte:: [Integer] -> [Integer] -- inverte array
inverte [] = []
inverte (x:y) = inverte y ++ [x]

palindromo:: [Integer] -> Bool -- confere se a array invertida é igual a array recebida
palindromo [] = True
palindromo x 
  | (x == inverte x) = True
  | otherwise = False

