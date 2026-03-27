module Natural where

import Auxiliar

-- a_natural
a_natural :: Integer -> Natural
a_natural 0 = Cero
a_natural n = S (a_natural (n - 1))

-- a_entero
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
