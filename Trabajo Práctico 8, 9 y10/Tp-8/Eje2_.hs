module Eje2 where
--2 Lista
-- a)
divisores :: Int -> [Int]
divisores x = [ s | s <- [-x..x] , s /=0, x `mod` s == 0]
-- b)
segTiempo :: Int -> [Int]
segTiempo x = [hs,min,seg]
    where
        hs  = x `div` 3600
        seg_rst = x - 3600*hs  
        min = seg_rst `div` 60
        seg = seg_rst - min*60
-- c)
primo :: Int -> Bool
primo x = x>1 && (divisores x) == [-x,-1,1,x]
-- d)
listPrimo :: Int -> [Int]
listPrimo x = [ s | s <- [0..x], primo s ]
-- e)
tomar :: Int -> [Int] -> [Int]
tomar n l = take n l
-- f)
tomarMientras :: (a -> Bool) -> [a] -> [a]
tomarMientras _ [] = []
tomarMientras p (x:xs)
    | p x = x : tomarMientras p xs
    | otherwise = []
-- g)
nIndex :: [a] -> Int -> a
nIndex (x:xs) n
    | n == 0 = x
    | otherwise = nIndex xs (n-1)
-- h)
element :: (Eq a) => a -> [a] -> Bool
element _ [] = False
element e (x:xs)
    | x == e = True
    | otherwise = element e xs
-- i)
toBin :: Int -> [Int]
toBin 0 = [0]
toBin n
    | mod n 2 == 1 = toBin (div n 2) ++ [1]
    | mod n 2 == 0 = toBin (div n 2) ++ [0]
-- j)
sumaComplejo :: (Int,Int) -> (Int,Int) -> (Int,Int)
sumaComplejo (a,b) (c,d) = (a+c, b+d)
prodComplejo :: (Int,Int) -> (Int,Int) -> (Int,Int)
prodComplejo (a,b) (c,d) = (a*c-b*d, a*d+b*c)
-- k)
-- l)
-- m)
-- n)
-- ñ)
-- o)
-- p)
-- q)
-- r)
