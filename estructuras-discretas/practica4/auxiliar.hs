module Auxiliar where

-- Definición del tipo de dato Natural
-- Un número natural puede ser:
-- Cero -> representa el número 0
-- S n  -> representa el sucesor de un número natural
-- Con esto podemos construir números como:
-- 1 = S Cero
-- 2 = S (S Cero)
-- 3 = S (S (S Cero))

data Natural = Cero | S Natural deriving (Eq, Show)


-- Función: sumaNat
-- Esta función suma dos números naturales.
-- Se define de forma recursiva sobre el primer número.

sumaNat :: Natural -> Natural -> Natural

-- Si el primer número es Cero, el resultado es el segundo
sumaNat Cero n = n

-- Si el primer número es S m,
-- se agrega un sucesor al resultado de la suma recursiva
sumaNat (S m) n = S (sumaNat m n)


-- Función: multNat
-- Esta función multiplica dos números naturales.
-- La multiplicación se define como suma repetida.

multNat :: Natural -> Natural -> Natural

-- Si el primer número es Cero, el resultado es Cero
multNat Cero _ = Cero

-- Si el primer número es S m,
-- se suma n al resultado de multiplicar m por n
-- Es decir, n + (m * n)
multNat (S m) n = sumaNat n (multNat m n)
