module Auxiliar where

import Natural
import Entero

-- sumaNat
sumaNat :: Natural -> Natural -> Natural
sumaNat Cero n = n
sumaNat (S m) n = S (sumaNat m n)

-- multNat
multNat :: Natural -> Natural -> Natural
multNat Cero _ = Cero
multNat (S m) n = sumaNat n (multNat m n)

-- sumaEnt
sumaEnt :: Entero -> Entero -> Entero
sumaEnt Zero b = b
sumaEnt (Succ a) b = Succ (sumaEnt a b)
sumaEnt (Neg a) b = Neg (sumaEnt a b)

-- negEnt
negEnt :: Entero -> Entero
negEnt Zero = Zero
negEnt (Succ n) = Neg n
negEnt (Neg n) = Succ n
