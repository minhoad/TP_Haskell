soma :: [Integer] -> Integer
soma [] = 0
soma (x:y) = x + soma y

somaParciaisInvertida :: [Integer] -> [Integer] -> [Integer]
somaParciaisInvertida [] a = a
somaParciaisInvertida (x:y) a = somaParciaisInvertida y ([x + soma y] ++ a)

inverte :: [Integer] -> [Integer]
inverte [] = []
inverte (x:y) = inverte y ++ [x]

somaParciais :: [Integer] -> [Integer]
somaParciais [] = []
somaParciais (x:y) = somaParciaisInvertida (inverte (x:y)) []

