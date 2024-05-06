module Pdp where

--funcion
dobleF x = x + x
cuadrado x = x*x
doubleVAl x y = x*2 + y*2
doubleVAl dobleF x + dobleF y 

--funcion do
main = do { putStr "2+2 =" ; print(2+2) }

main = do putStr "What is 2+2?"
    x <- readLn
    if x = 4 
        then putStrLn "You're right!"
        else putStrLn "You're wrong!"

-- Def. de una funcion
hola :: String
hola = "Hola mundo"

main = do { print(hola)}
