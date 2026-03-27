module Natural where

import Auxiliar

-- Función: a_natural
-- Esta función convierte un número entero (Integer) a nuestro tipo
-- de dato Natural definido con los constructores Cero y S.
-- La idea es representar los números naturales usando sucesores.
-- Si el número es 0, se devuelve Cero.
-- En otro caso, se aplica el constructor S al resultado de llamar
-- recursivamente a la función con n-1.
-- Ejemplo:
-- a_natural 3 = S (S (S Cero))

a_natural :: Integer -> Natural
a_natural 0 = Cero
a_natural n = S (a_natural (n - 1))


-- Función: a_entero
-- Esta función hace lo contrario de la anterior, es decir,
-- convierte un número del tipo Natural a un Integer.
-- Si recibe Cero, devuelve 0.
-- Si recibe un sucesor S n, entonces suma 1 y continúa
-- de forma recursiva hasta llegar a Cero.
-- Ejemplo:
-- a_entero (S (S Cero)) = 2

a_entero :: Natural -> Integer
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n


-- Función: potenciaNat
-- Esta función calcula la potencia entre dos números naturales.
-- El primer parámetro es la base y el segundo es el exponente.
-- Si el exponente es Cero, el resultado es 1 (S Cero),
-- ya que cualquier número elevado a la 0 es 1.
-- En otro caso, se multiplica la base por la potencia
-- calculada recursivamente disminuyendo el exponente.
-- Se usa la función multNat definida anteriormente.
-- Ejemplo:
-- potenciaNat 2 3 = 2 * 2 * 2 = 8

potenciaNat :: Natural -> Natural -> Natural
potenciaNat _ Cero = S Cero
potenciaNat base (S exp) = multNat base (potenciaNat base exp)


-- Función: facNat
-- Esta función calcula el factorial de un número natural.
-- Recordemos que el factorial de 0 es 1.
-- Si el número es Cero, se devuelve S Cero (que representa 1).
-- En otro caso, se multiplica el número actual (S n)
-- por el factorial del número anterior (n).
-- La multiplicación se realiza con multNat.
-- Ejemplo:
-- facNat 3 = 3 * 2 * 1 = 6

facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multNat (S n) (facNat n)
facNat (S n) = multNat (S n) (facNat n)
