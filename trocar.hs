inverte :: [Integer] -> [Integer]
inverte [] = []
inverte (x:y) = inverte y ++ [x]

switch :: Integer -> [Integer]
switch 0 = []
switch n
    | (n > 100) = [100] ++ switch (n-100)
    | (n > 50) = [50] ++ switch (n-50)
    | (n > 10) = [10] ++ switch (n-10)
    | (n > 5) = [5] ++ switch (n-5)
    | otherwise = [1] ++ switch (n-1)

trocar :: Integer -> [Integer]
trocar x = inverte (switch x)

