module Eje3 where
import Data.List
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
data Dato = Dato { dia :: Int, mes :: Int, año :: Int } deriving(Show)
data Persona = Persona {nombre :: String,apellido :: String, nacimiento :: Dato} deriving(Show)

takePersona :: [Persona] -> Dato -> [Persona]
takePersona [] _ = [] -- Si la Lista esta vacio
takePersona (x:xs) fecha 
    | compara (nacimiento x) fecha = x:takePersona xs fecha
    | otherwise = []
    
compara :: Dato -> Dato -> Bool
compara x y = (dia x <= dia y) && (mes x <= mes y) &&  (año x <= año y)

limite :: Dato
limite = Dato 1 1 1990

personas :: [Persona]
personas = [Persona "Alice" "Smith" (Dato 10 5 1985),Persona "Bob" "Johnson" (Dato 20 3 1992), Persona "Charlie" "Brown" (Dato 15 12 1980) ]

-- e)
data Pizza = Pizza { ingredientes :: [String], precio :: Double } deriving(Show)

dropPrecio :: [Pizza] -> [Pizza]
dropPrecio [] = []
dropPrecio (pizza:xs)
	| precio pizza <= 200 = dropPrecio xs
	| otherwise = pizza :xs

menu :: [Pizza]
menu = [Pizza ["Margarita"] 150 ,Pizza ["Hawaiana","Jamon"] 175 , Pizza ["Vejetariano","Pimiento","Cebolla"] 200 , Pizza ["Barbacoa","Champiniones"] 220, Pizza ["Hawaiana","Piña"] 250 ]

-- f)
-- g)
-- h)
-- i)
