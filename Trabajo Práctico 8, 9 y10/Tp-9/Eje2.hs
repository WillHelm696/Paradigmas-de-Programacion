module Eje2 where
-- EJERCICIO INTEGRADOR
--Ejercicio 2.1
verificarAnidamiento :: String -> Bool
verificarAnidamiento s = esBalanceado s []

esBalanceado :: String -> Char -> Bool
esBalanceado [] [] = True
esBalanceado [] _  = False
esBalanceado (x:xs) p
    | push x = esBalanceado xs (x:p) 
    | pop x && (sonPar x head p) = esBalanceado xs tail p
push c = c `elem` "[{("
pop  c = c `elem` ")}]" 
sonPar a b = (a == '[' && b == ']')||(a == '{' && b == '}')||(a == '(' && b == ')') 
--Ejercicio 2.2
edad :: String -> Int -> Double
edad pl sg 
    | pl=="Mercurio" = fromIntegral sg/(31557600*0.2408467)
    | pl=="Venus"    = fromIntegral sg/(31557600*0.61519726)
    | pl=="Tierra"   = fromIntegral sg/(31557600*1.0)
    | pl=="Marte"    = fromIntegral sg/(31557600*1.8808158)
    | pl=="Jupiter"  = fromIntegral sg/(31557600*11.862615)
    | pl=="Saturno"  = fromIntegral sg/(31557600*29.447498)
    | pl=="Urano"    = fromIntegral sg/(31557600*84.016846)
    | pl=="Neptuno"  = fromIntegral sg/(31557600*164.79132)
    | otherwise = 0.0
--Ejercicio 2.3
contarPalabras :: String -> [(String,Int)]
contarPalabras frase = 
    let palabra = words $ map (\c -> if isPuntuacion c || isPimbol c then ' ' else toLower c) frase
    in map (\w -> (head w, length w)) $ sort palabra
--Ejercicio 2.4
--Ejercicio 2.5
--Ejercicio 2.6
