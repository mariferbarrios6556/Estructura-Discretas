module Mati where

-- Definimos el tipo de dato Matrioska
-- Una matrioska puede ser:
-- 1. Mati (la más pequeña, sin contenido)
-- 2. Cont Matrioska (una matrioska que contiene otra dentro)
-- Esto representa la idea de muñecas rusas anidadas.
-- También derivamos Eq y Show para poder comparar y mostrar valores.

data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)


-- Función: mayorIgual
-- Esta función compara dos matrioskas y determina si la primera
-- es mayor o igual que la segunda.
-- La comparación se basa en cuántas capas tiene cada una.
-- Más capas significa una matrioska más grande.

mayorIgual :: Matrioska -> Matrioska -> Bool

-- Si ambas son la más pequeña, entonces son iguales
mayorIgual Mati Mati = True

-- Si la primera es la más pequeña y la segunda tiene contenido,
-- entonces la primera es menor
mayorIgual Mati (Cont _) = False

-- Si la primera tiene contenido y la segunda es la más pequeña,
-- entonces la primera es mayor
mayorIgual (Cont _) Mati = True

-- Si ambas tienen contenido, se comparan recursivamente
-- las matrioskas internas
mayorIgual (Cont a) (Cont b) = mayorIgual a b


-- Función: aplana
-- Esta función recibe una matrioska y devuelve una lista
-- con todas las matrioskas desde la más grande hasta la más pequeña.
-- Es como "desenvolver" todas las capas.

aplana :: Matrioska -> [Matrioska]

-- Si es la matrioska más pequeña, la lista solo contiene esa
aplana Mati = [Mati]

-- Si es una matrioska con contenido,
-- se agrega la actual a la lista y se continúa con la interna.
-- Se usa m@(Cont x) para conservar la matrioska completa.
-- Ejemplo:
-- Cont (Cont Mati) -> [Cont (Cont Mati), Cont Mati, Mati]
aplana m@(Cont x) = m : aplana x
