module Eje4 where
--4 Funciones Recursivas
-- a)
suma :: [Int] -> Int
suma [] = 0
suma (x:xs) = x + suma xs
-- b)
alguno :: [Bool] -> Bool
alguno [] = False
alguno (x:xs) = x || alguno xs
-- c) 
todos :: [Bool] -> Bool
todos []=True
todos (x:xs) = x && todos xs
-- d)
codigos :: [Char] -> [Int]
codigos [] = []
codigos (x:xs) = fromEnum x : codigos xs
-- e)
restost :: [Int] -> Int -> [Int]
restost [] _ = []
restost (x:xs) n = (x `mod` n):restost xs n
-- f)
incremLis :: [Int] -> [Int]
incremLis [] = []
incremLis (x:xs) = (x+1):incremLis xs
-- g)
cuadrados :: [Int] -> [Int]
cuadrados []=[]
cuadrados (x:xs) = x^2 : cuadrados xs
-- h)
-- i)
-- j)
-- k)
-- l)
-- m)
-- n)
-- ñ)
