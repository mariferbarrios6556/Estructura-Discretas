module Practica5 where

import Data.Char (toUpper)
import Auxiliar

-- 1. hollerBack
-- Convierte una cadena en minúsculas a mayúsculas usando recursión
hollerBack :: String -> String
hollerBack [] = []
hollerBack (x:xs) = toUpper x : hollerBack xs


-- 2. decimal_binario
-- Convierte un número decimal a una lista en binario
decimal_binario :: Int -> [Int]
decimal_binario 0 = [0]
decimal_binario n = decimal_aux n

decimal_aux :: Int -> [Int]
decimal_aux 0 = []
decimal_aux n =
    decimal_aux (div n 2) ++ [mod n 2]


-- 3. replica
-- Replica un número x, n veces en una lista
replica :: Int -> Int -> [Int]
replica _ 0 = []
replica x n = x : replica x (n-1)


-- 4. recuperaElemento
-- Regresa el elemento en la posición indicada
recuperaElemento :: [a] -> Int -> a
recuperaElemento (x:_) 0 = x
recuperaElemento (_:xs) n = recuperaElemento xs (n-1)


-- Función auxiliar para agregar un elemento al final
agregaFinal :: [a] -> a -> [a]
agregaFinal [] y = [y]
agregaFinal (x:xs) y = x : agregaFinal xs y

-- Función auxiliar para obtener el último elemento
ultimo :: [a] -> a
ultimo [x] = x
ultimo (_:xs) = ultimo xs

-- Función auxiliar para quitar el último elemento
sinUltimo :: [a] -> [a]
sinUltimo [x] = []
sinUltimo (x:xs) = x : sinUltimo xs

-- Rotar una vez a la izquierda
rotaUna :: [a] -> [a]
rotaUna [] = []
rotaUna (x:xs) = agregaFinal xs x

-- Rotar una vez a la derecha
rotaDerechaUna :: [a] -> [a]
rotaDerechaUna [] = []
rotaDerechaUna xs = ultimo xs : sinUltimo xs
extranio :: Int -> [Int]
extranio 1 = [1]
extranio n
    | even n = n : extranio (div n 2)
    | otherwise = n : extranio (3*n + 1)
