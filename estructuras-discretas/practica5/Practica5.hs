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



