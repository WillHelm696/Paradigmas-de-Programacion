module YT where
divisible x y = if (x `mod` y) == 0
                then "Son Divisibles"
                else "No Es divisible"

esMayor x y = if x>y
    then "Es mayor"
    else "ES menor"

sumaSiPares :: Int -> Int -> Int
sumaSiPares a b
    | esPar a && esPar b = a+b
    | otherwise = 0

esPar :: Int -> Bool
esPar n = n `mod` 2 == 0