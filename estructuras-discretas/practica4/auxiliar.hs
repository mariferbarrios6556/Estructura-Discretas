module Auxiliar where

data Natural = Cero | S Natural deriving (Eq, Show)

-- sumaNat
sumaNat :: Natural -> Natural -> Natural
sumaNat Cero n = n
sumaNat (S m) n = S (sumaNat m n)

-- multNat
multNat :: Natural -> Natural -> Natural
multNat Cero _ = Cero
multNat (S m) n = sumaNat n (multNat m n)
