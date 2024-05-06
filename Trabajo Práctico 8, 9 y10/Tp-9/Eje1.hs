import Data.Char
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
-- I)
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
titulo (s:ps)
    | length s >=4  = mayInic s : titulo ps 
    | otherwise     = minInic s : titulo ps
    where
        mayInic (x:cx) = toUpper x : cx
        minInic (x:cx) = toLower x : cx
-- M)
--Ejercicio 1.3
sumaFoldr :: Num, a => [a] -> a
sumaFoldr = foldr (+) 0
--Ejercicio 1.4
--Ejercicio 1.5
-- A)
-- B)
-- C)
