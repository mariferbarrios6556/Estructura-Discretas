module Auxiliar where

{- 
Función: minimoAux
Descripción: Calcula el mínimo entre dos valores
-}
minimoAux :: Ord a => a -> a -> a
minimoAux x y
    | x <= y    = x
    | otherwise = y
