import Data.Char
import Data.List
-- PROBLEMAS
--Ejercicio 1.1

--  a-Suma Cuadrados Por Comprencion
sumaCuadrasos :: Int -> Int
sumaCuadrasos n = sum[ x^2 | x <- [1..n]]

--  a-Suma Cuadrados Por Recursion
sumaCuadrasosR :: Int -> Int
sumaCuadrasosR 0 = 0
sumaCuadrasosR n = n^2 + sumaCuadrasosR (n-1)

--  b-Suma Cuadrados Impares Por comprencion
sumaImpares :: Int -> Int
sumaImpares n = sum [x^2 | x <- [1..n], x `mod` 2 /= 0 ]

--  b-Suma Cuadrados Imparares Por recursion
sumaImparesR :: Int -> Int
sumaImparesR 0 = 0  
sumaImparesR n 
    | n `mod` 2 == 0 = sumaImparesR (n-1)
    | otherwise = n^2 + sumaImparesR (n-1)

--  c-Suma Cuadrados Impares Por Comprencion
sumaPares :: Int -> Int
sumaPares n = sum[ x^2 | x <- [1..n], x `mod` 2 == 0]

--  c-Suma Cuadrados Impares Por Recursion
sumaParesR :: Int -> Int
sumaParesR 0 = 0
sumaParesR n
    | n `mod` 2 /= 0 = sumaParesR (n-1)
    | otherwise = n^2 + sumaParesR (n-1)

--Ejercicio 1.2

-- A)
listaPares :: Int -> [Int]
listaPares n = [ x | x <- [2,4..n] ]

-- B)
listaParReinstrigido :: Int -> Int -> [Int]
listaParReinstrigido n m = [ x | x <- [0..n],x `mod` 2 == 0, x > m]

-- C)
divisores :: Int -> [Int]
divisores x = [ s | s <- [1..x] , x `mod` s == 0]

-- D)
remplazarPorCopias :: [Int] -> [Int]
--remplazarPorCopias l = [ x | x <- l , x == replicate x x]
remplazarPorCopias l = concatMap (\x -> replicate x x) l

-- E)
elemetosPar :: Int -> Int -> Int -> Int
elemetosPar x y z = n
    where
        n = 3 - ( x`mod`2 + y`mod`2 + z`mod`2 )

-- F) Tp-8 Eje2-d
primo :: Int -> Bool
primo x = x>1 && (divisores x) == [-x,-1,1,x]

listPrimo :: Int -> [Int]
listPrimo x = [ s | s <- [1..x], primo s ]

-- G)
pitagoricamente :: Int -> [(Int,Int,Int)]
pitagoricamente n = [(x,y,z)|x<-[1..n],y<-[1..n],z<-[1..n], x^2+y^2==z^2 ]

-- H)
perfectoList :: Int ->  [Int]
perfectoList x = [ s | s <- [1..x] , sum(divisores s) == s+s]

-- I)
productoEscalar :: [Int] -> [Int] -> Int
productoEscalar xs ys = sum[ (i*j) | (i,j) <- (zip xs ys) , length xs == length ys]

-- J)
buscaCrusigrama :: Char -> Int -> Int -> [String] -> [String]
buscaCrusigrama l pos lon ps = [ x | x<-ps , length x == lon, x !!pos == l]

-- K)
posiciciones :: String -> Char -> [Int]
--posiciciones xs y = [s | s <- [0..n] , xs !!s == y]
--    where n == length xs - 1
posiciciones xs y = [i  | (c,i) <- zip xs [0..], c == y]

-- L) Terminar
titulo :: [String] -> [String]
titulo [] = []
titulo (x:px) = mayInic x : titulo' px
titulo' [] = []
titulo' (s:ps)
    | length s >=4  = mayInic s : titulo' ps 
    | otherwise     = minInic s : titulo' ps

mayInic :: String -> String
mayInic (x:cx) = toUpper x : minInic cx

minInic :: String -> String
minInic [] = []
minInic (x:cx) = toLower x : minInic cx

libro = ["eL","arTE","DE","La","proGraMacion"]

-- M)

--Ejercicio 1.3
sumaFoldr :: Num a => [a] -> a
sumaFoldr xs = foldr (+) 0 xs

productoFoldr :: Num a => [a] -> a
productoFoldr xs = foldr (*) 1 xs

--Ejercicio 1.4 
{-
map :: (a -> b) -> [a] -> [b]
filter :: (a -> Bool) -> [a] -> [a]
takeWhile :: (a -> Bool) -> [a] -> [a]
dropWhile :: (a -> Bool) -> [a] -> [a]
iterate :: (a -> a) -> a -> [a]
zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
-}


--Ejercicio 1.5
-- A)

-- B)
spiral :: [[Int]] -> [Int]
spiral mx = goRight  mx
	where
		goRight [] = []
		goRight mx = (head mx) ++ goBelow (transpose (tail mx))
		goBelow [] = []
		goBelow mx = (last mx) ++ goLefht (transpose (init mx))
		goLefht [] = []
		goLefht mx = reverse (last mx) ++ goAbove (transpose (init mx))
		goAbove [] = []
		goAbove mx = reverse (head mx) ++ goRight (transpose (tail mx))

matriz3 :: [[Int]]
matriz3 = [ [1,2,3] , [4,5,6] , [7,8,9] ]
matriz5 :: [[Int]]
matriz5 = [ [1,2,3,4,5] , [6,7,8,9,10] , [11,12,13,14,15] , [16,17,18,19,20] ]
-- C)
