module Natural where

import Auxiliar

data Natural = Cero | S Natural deriving (Eq, Show)

-- a_natural
-- Convierte un entero a Natural
a_natural :: Integer -> Natural
a_natural 0 = Cero
a_natural n = S (a_natural (n - 1))

-- a_entero
-- Convierte Natural a entero
a_entero :: Natural -> Integer
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n

-- potenciaNat
potenciaNat :: Natural -> Natural -> Natural
potenciaNat _ Cero = S Cero
potenciaNat base (S exp) = multNat base (potenciaNat base exp)

-- facNat
facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multNat (S n) (facNat n)
