
module Modulos where

-- esPar
-- Esta función determina si un número es par
-- Un número es par si el residuo de dividirlo entre 2 es 0
-- Ejemplo:
-- ghci> esPar 4
-- True

esPar :: Int -> Bool
esPar n = mod n 2 == 0

module Tipos where

-- Definición del tipo Materia
-- Representa algunas materias del primer semestre

data Materia =
      IntroduccionCC
    | EstructurasDiscretas
    | AlgebraSuperior
    | CalculoDiferencial
    | FisicaI
    deriving (Eq)

-- Se define cómo se muestran las materias al imprimirse

instance Show Materia where
    show IntroduccionCC = "Introduccion a las CC"
    show EstructurasDiscretas = "Estructuras Discretas"
    show AlgebraSuperior = "Algebra Superior"
    show CalculoDiferencial = "Calculo Diferencial"
    show FisicaI = "Fisica I"

-- creditos
-- Recibe un número entero que representa los créditos
-- y devuelve una lista de materias que tienen esos créditos
-- Ejemplo:
-- ghci> creditos 12
-- [Introduccion a las CC]

creditos :: Int -> [Materia]
creditos n =
    if n == 12 then [IntroduccionCC]
    else if n == 10 then [EstructurasDiscretas,AlgebraSuperior,CalculoDiferencial,FisicaI]
    else []
    module Comprension where

import Modulos (esPar)

-- soloPares
-- Recibe una lista de enteros y devuelve solo los números pares
-- utilizando una lista por comprensión
-- Ejemplo:
-- ghci> soloPares [1,2,3,4]
-- [2,4]

soloPares :: [Int] -> [Int]
soloPares lista = [x | x <- lista, esPar x]



-- negativos
-- Cuenta cuantos números negativos hay dentro de una lista
-- Para hacerlo se genera una lista con los negativos y luego
-- se calcula su longitud
-- Ejemplo:
-- ghci> negativos [-1,2,4,6,-4]
-- 2

negativos :: [Int] -> Int
negativos lista = length [x | x <- lista, x < 0]



-- esPrimo
-- Determina si un número es primo
-- Un número es primo si solo es divisible entre 1 y él mismo

esPrimo :: Int -> Bool
esPrimo n =
    if n < 2 then False
    else length [x | x <- [2..n-1], mod n x == 0] == 0



-- primos
-- Devuelve los números primos de una lista

primos :: [Int] -> [Int]
primos lista = [x | x <- lista, esPrimo x]



-- mcd
-- Calcula el máximo común divisor usando el algoritmo de Euclides

mcd :: Int -> Int -> Int
mcd a b =
    if b == 0 then a
    else mcd b (mod a b)



-- coprimos
-- Recibe un número n y devuelve los números menores que n
-- que son coprimos con él

coprimos :: Int -> [Int]
coprimos n = [x | x <- [1..n-1], mcd x n == 1]
import Tipos
import Comprension

main :: IO ()
main = do
    putStrLn "Práctica 03"

    print (creditos 12)
    print (creditos 10)

    print (soloPares [1,2,3,4,5,6])

    print (negativos [-1,2,4,6,-4])

    print (primos [1..20])

    print (coprimos 10)
