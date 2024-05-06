module Eje1 where
--1 Haskell: Ejercicio Basicos
--a)
volumenEsfera x = (4/3)*pi*x^3
--b) 
sumaPeso :: Double -> Double -> Double -> Double -> Double -> Double
sumaPeso a b c d e = a*0.01 + b*0.05 + c*0.1 + d*0.5 + e*100
--c) Los datos deben escribirse de la forma > incrTupla (x,y,x) 
incrTupla :: (Int,Int,Int) -> (Int, Int, Int)
incrTupla (x,y,z) = (x+1,y+1,z+1)
--d)
cuadrado :: Int -> Int
cuadrado x = x*x
--e)
cuadruple ::  Int -> Int
cuadruple x = cuadrado (cuadrado x)
--f)
mediaAritmetica :: Double -> Double -> Double -> Double
mediaAritmetica a b c = (a+b+c)/3
--g)
maxTupla :: Int -> Int -> Int -> Int
maxTupla a b c = max (max a b) c
-- h)
maxSextupla :: Int -> Int -> Int -> Int -> Int -> Int -> Int
maxSextupla a b c d e f = max (maxTupla a b c) (maxTupla d e f)
--i)
areaTriangulo :: Double -> Double -> Double -> Double
areaTriangulo a b c = sqrt ( s*(s-a)*(s-b)*(s-c) )
    where s = (a + b +c)/2
--j) Los datos deben escribirse de la forma > cuadrantr (x,y)
cuadrante :: (Double,Double) -> [Char]
cuadrante (x,y)
    | x > 0 && y > 0 = "Cuadrante I" 
    | x > 0 && y < 0 = "Cuadrante II"
    | x < 0 && y > 0 = "Cuadrante III"
    | x < 0 && y < 0 = "Cuadrante IV"
    | otherwise = "En el origen" 
--k) 
igualesTres :: Float -> Float -> Float -> Bool
igualesTres x y z = x==y && y==z
--l) 
diferenceTres :: Float -> Float -> Float -> Bool
diferenceTres x y z = x /= y && y /= z
--m) 
igualesCuatro :: Int -> Int -> Int -> Int -> Bool
igualesCuatro v x y z = cuadrado v == cuadrado x && cuadrado x == cuadrado y && cuadrado y == cuadrado z
--n)
raices :: (Float, Float, Float) -> (Float, Float)
raices  (a, b, c) = (x1, x2) 
    where
    x1 = e + sqrt d / (2 * a)
    x2 = e - sqrt d / (2 * a)
    d = b * b - 4 * a * c
    e = - b / (2 * a)
--ñ)
biciesto :: Int -> Bool
biciesto x = x `rem` 4 == 0
--o)
xor :: Bool -> Bool -> Bool
xor p q = not ( p==q )
