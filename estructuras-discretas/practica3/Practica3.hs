---------------------------------------------------------
-- MÓDULO 1
-- Archivo: Modulos.hs
-- Aquí definimos funciones auxiliares que pueden
-- reutilizarse en otros módulos
---------------------------------------------------------

module Modulos where

---------------------------------------------------------
-- EJERCICIO: esPar
-- Esta función determina si un número es par.
-- Un número es par cuando el residuo de dividirlo
-- entre 2 es igual a 0.
--
-- Ejemplo en ghci:
-- ghci> esPar 4
-- True
---------------------------------------------------------

esPar :: Int -> Bool
esPar n = mod n 2 == 0

---------------------------------------------------------
-- MÓDULO 2
-- Archivo: Tipos.hs
-- Aquí se define un tipo de dato propio para representar
-- algunas materias del primer semestre de Ciencias
-- de la Computación.
---------------------------------------------------------

module Tipos where

---------------------------------------------------------
-- EJERCICIO: Definición del tipo Materia
-- Se crea un tipo de dato llamado Materia que contiene
-- algunas asignaturas del primer semestre.
---------------------------------------------------------

data Materia =
      IntroduccionCC
    | EstructurasDiscretas
    | AlgebraSuperior
    | CalculoDiferencial
    | FisicaI
    deriving (Eq)

---------------------------------------------------------
-- Se define cómo se mostrarán las materias cuando
-- se impriman en pantalla con print.
---------------------------------------------------------

instance Show Materia where
    show IntroduccionCC = "Introduccion a las CC"
    show EstructurasDiscretas = "Estructuras Discretas"
    show AlgebraSuperior = "Algebra Superior"
    show CalculoDiferencial = "Calculo Diferencial"
    show FisicaI = "Fisica I"

---------------------------------------------------------
-- EJERCICIO 2
-- Función creditos
--
-- Recibe un número entero que representa los créditos
-- y devuelve una lista de materias que tienen ese número
-- de créditos.
--
-- Ejemplo en ghci:
-- ghci> creditos 12
-- [Introduccion a las CC]
---------------------------------------------------------

creditos :: Int -> [Materia]
creditos n =
    if n == 12 then [IntroduccionCC]
    else if n == 10 then [EstructurasDiscretas,AlgebraSuperior,CalculoDiferencial,FisicaI]
    else []

    ---------------------------------------------------------
-- MÓDULO 3
-- Archivo: Comprension.hs
-- En este módulo se implementan funciones utilizando
-- listas por comprensión.
---------------------------------------------------------

module Comprension where

-- Importamos la función esPar del módulo Modulos
import Modulos (esPar)

---------------------------------------------------------
-- EJERCICIO 4
-- Función soloPares
--
-- Recibe una lista de números enteros y devuelve
-- únicamente los números pares utilizando una
-- lista por comprensión.
--
-- Ejemplo en ghci:
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
-- Para hacerlo primero genera una lista con los
-- números negativos y después calcula su longitud.
--
-- Ejemplo en ghci:
-- ghci> negativos [-1,2,4,6,-4]
-- 2
---------------------------------------------------------

negativos :: [Int] -> Int
negativos lista = length [x | x <- lista, x < 0]

---------------------------------------------------------
-- Función auxiliar: esPrimo
--
-- Determina si un número es primo.
-- Un número primo es aquel que solo es divisible
-- entre 1 y él mismo.
---------------------------------------------------------

esPrimo :: Int -> Bool
esPrimo n =
    if n < 2 then False
    else length [x | x <- [2..n-1], mod n x == 0] == 0

---------------------------------------------------------
-- EJERCICIO 6
-- Función primos
--
-- Recibe una lista de números y devuelve únicamente
-- aquellos que son números primos.
--
-- Ejemplo en ghci:
-- ghci> primos [1..20]
-- [2,3,5,7,11,13,17,19]
---------------------------------------------------------

primos :: [Int] -> [Int]
primos lista = [x | x <- lista, esPrimo x]

---------------------------------------------------------
-- Función auxiliar: mcd
--
-- Calcula el máximo común divisor entre dos números
-- utilizando el algoritmo de Euclides.
---------------------------------------------------------

mcd :: Int -> Int -> Int
mcd a b =
    if b == 0 then a
    else mcd b (mod a b)

---------------------------------------------------------
-- EJERCICIO 7
-- Función coprimos
--
-- Recibe un número n y devuelve una lista con los
-- números menores que n que son coprimos con él.
-- Dos números son coprimos si su máximo común
-- divisor es igual a 1.
--
-- Ejemplo en ghci:
-- ghci> coprimos 10
-- [1,3,7,9]
---------------------------------------------------------

coprimos :: Int -> [Int]
coprimos n = [x | x <- [1..n-1], mcd x n == 1]
