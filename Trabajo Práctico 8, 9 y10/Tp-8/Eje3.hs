module Eje3 where
--3 Combinacion De tipos
-- a) 
sumaPar :: [(Int,Int)] -> [Int]
sumaPar [] = []
sumaPar ( (a,b) : xs ) = (a+b) : sumaPar xs
-- b)
zipMaximo :: [Int] -> [Int] -> [Int]
zipMaximo _ [] = []
zipMaximo [] _ = []
zipMaximo (x:xs) (y:ys) = (max x y):zipMaximo xs ys
-- c)
zipSort :: [Int] -> [Int] -> [(Int,Int)]
zipSort [] [] = []
zipSort (x:xs) (y:ys) = ( min x y , max x y): zipSort xs ys
-- d)
type Date = Date { dia :: Int, mes :: Int,año :: Int } deriving (Ord,Eq,Show)
type Persona (String,String,Date)

takePersona :: [Persona] -> Date -> [Persona]
takePersona [] _ = []
takePersona ((nombre,apellido,fecha):xs) limite
    | fecha <= limite = (nombre,apellido,fecha): takePersona xs limite
    | otherwise = []
-- e)
dropPrecio ::

-- f)
-- g)
-- h)
-- i)
