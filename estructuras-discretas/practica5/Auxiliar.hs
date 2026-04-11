module Auxiliar where

-- Agrega un elemento al final de una lista
agregaFinal :: [a] -> a -> [a]
agregaFinal [] y = [y]
agregaFinal (x:xs) y = x : agregaFinal xs y


-- Obtiene el último elemento de una lista
ultimo :: [a] -> a
ultimo [x] = x
ultimo (_:xs) = ultimo xs


-- Elimina el último elemento de una lista
sinUltimo :: [a] -> [a]
sinUltimo [x] = []
sinUltimo (x:xs) = x : sinUltimo xs


-- Rota una lista una vez a la izquierda
rotaUna :: [a] -> [a]
rotaUna [] = []
rotaUna (x:xs) = agregaFinal xs x


-- Rota una lista una vez a la derecha
rotaDerechaUna :: [a] -> [a]
rotaDerechaUna [] = []
rotaDerechaUna xs = ultimo xs : sinUltimo xs
