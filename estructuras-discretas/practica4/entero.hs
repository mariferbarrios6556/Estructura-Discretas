module Entero where

-- Definición del tipo de dato Entero
-- Un entero puede ser:
-- Zero  -> representa el 0
-- Succ  -> representa el sucesor (número positivo)
-- Neg   -> representa un número negativo
-- Con esto construimos enteros usando recursión

data Entero = Zero | Succ Entero | Neg Entero deriving (Eq, Show)


-- Función: sumaEnt
-- Esta función suma dos números del tipo Entero.
-- Se define de manera recursiva según la estructura
-- del primer número.

sumaEnt :: Entero -> Entero -> Entero

-- Si el primer número es Zero, el resultado es el segundo
sumaEnt Zero b = b

-- Si el primer número es Succ a, se agrega un sucesor
-- al resultado de sumar recursivamente
sumaEnt (Succ a) b = Succ (sumaEnt a b)

-- Si el primer número es negativo,
-- se mantiene el signo negativo y se continúa la suma
sumaEnt (Neg a) b = Neg (sumaEnt a b)


-- Función: negEnt
-- Esta función calcula el opuesto de un número entero.
-- Es decir, cambia el signo del número.

negEnt :: Entero -> Entero

-- El opuesto de cero es cero
negEnt Zero = Zero

-- Si es positivo (Succ), se convierte en negativo
negEnt (Succ n) = Neg n

-- Si es negativo, se convierte en positivo
negEnt (Neg n) = Succ n


-- Función: multiEnt
-- Esta función multiplica dos números enteros.
-- La multiplicación se define como suma repetida.

multiEnt :: Entero -> Entero -> Entero

-- Si alguno es cero, el resultado es cero
multiEnt Zero _ = Zero
multiEnt _ Zero = Zero

-- Si el primero es positivo,
-- se suma el segundo número tantas veces como indique
multiEnt (Succ a) b = sumaEnt b (multiEnt a b)

-- Si el primero es negativo,
-- se multiplica el valor positivo y luego se niega el resultado
multiEnt (Neg a) b = negEnt (multiEnt a b)
