---------------------------------------------------------
-- PRACTICA 03
-- Tipos de datos y listas por comprensión
-- Facultad de Ciencias - UNAM
---------------------------------------------------------

---------------------------------------------------------
-- EJERCICIO 1
-- Función esPar
--
-- Determina si un número es par.
-- Un número es par cuando el residuo de dividirlo
-- entre 2 es igual a 0.
--
-- Ejemplo:
-- ghci> esPar 4
-- True
---------------------------------------------------------

esPar :: Int -> Bool
esPar n = mod n 2 == 0


---------------------------------------------------------
-- EJERCICIO 2
-- Definición del tipo Materia
--
-- Se define un tipo de dato para representar algunas
-- materias del primer semestre de Ciencias de la
-- Computación.
---------------------------------------------------------

data Materia =
      IntroduccionCC
    | EstructurasDiscretas
    | AlgebraSuperior
    | CalculoDiferencial
    | FisicaI
    deriving (Eq)

---------------------------------------------------------
-- Se define cómo se mostrarán las materias
---------------------------------------------------------

instance Show Materia where
    show IntroduccionCC = "Introduccion a las CC"
    show EstructurasDiscretas = "Estructuras Discretas"
    show AlgebraSuperior = "Algebra Superior"
    show CalculoDiferencial = "Calculo Diferencial"
    show FisicaI = "Fisica I"

---------------------------------------------------------
-- Función creditos
--
-- Recibe un número entero que representa los créditos
-- y devuelve una lista de materias que tienen ese número.
--
-- Ejemplo:
-- ghci> creditos 12
-- [Introduccion a las CC]
---------------------------------------------------------

creditos :: Int -> [Materia]
creditos n =
    if n == 12 then [IntroduccionCC]
    else if n == 10 then [EstructurasDiscretas, AlgebraSuperior, CalculoDiferencial, FisicaI]
    else []


---------------------------------------------------------
-- EJERCICIO 4
-- Función soloPares
--
-- Recibe una lista y devuelve únicamente los números pares
-- usando listas por comprensión.
--
-- Ejemplo:
-- ghci> soloPares [1,2,3,4]
-- [2,4]
---------------------------------------------------------

soloPares :: [Int] -> [Int]
soloPares lista = [x | x <- lista, esPar x]


---------------------------------------------------------
-- EJERCICIO 5
-- Función negativos
--
-- Cuenta cuántos números negativos hay en una lista.
--
-- Ejemplo:
-- ghci> negativos [-1,2,4,6,-4]
-- 2
---------------------------------------------------------

negativos :: [Int] -> Int
negativos lista = length [x | x <- lista, x < 0]


---------------------------------------------------------
-- Función auxiliar: esPrimo
--
-- Determina si un número es primo.
---------------------------------------------------------

esPrimo :: Int -> Bool
esPrimo n =
    if n < 2 then False
    else length [x | x <- [2..n-1], mod n x == 0] == 0


---------------------------------------------------------
-- EJERCICIO 6
-- Función primos
--
-- Devuelve los números primos de una lista.
--
-- Ejemplo:
-- ghci> primos [1..20]
-- [2,3,5,7,11,13,17,19]
---------------------------------------------------------

primos :: [Int] -> [Int]
primos lista = [x | x <- lista, esPrimo x]


---------------------------------------------------------
-- Función auxiliar: mcd
--
-- Calcula el máximo común divisor usando Euclides.
---------------------------------------------------------

mcd :: Int -> Int -> Int
mcd a b =
    if b == 0 then a
    else mcd b (mod a b)


---------------------------------------------------------
-- EJERCICIO 7
-- Función coprimos
--
-- Devuelve los números menores que n que son coprimos con él.
--
-- Ejemplo:
-- ghci> coprimos 10
-- [1,3,7,9]
---------------------------------------------------------

coprimos :: Int -> [Int]
coprimos n = [x | x <- [1..n-1], mcd x n == 1]


---------------------------------------------------------
-- FUNCIÓN PRINCIPAL
-- Ejecuta pruebas de todas las funciones
---------------------------------------------------------

main :: IO ()
main = do
    putStrLn "Práctica 03"

    print (creditos 12)
    print (creditos 10)

    print (soloPares [1,2,3,4,5,6])

    print (negativos [-1,2,4,6,-4])

    print (primos [1..20])

    print (coprimos 10)
