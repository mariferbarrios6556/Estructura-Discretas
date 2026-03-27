module Entero where

data Entero = Zero | Succ Entero | Neg Entero deriving (Eq, Show)

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

-- multiEnt
multiEnt :: Entero -> Entero -> Entero
multiEnt Zero _ = Zero
multiEnt _ Zero = Zero
multiEnt (Succ a) b = sumaEnt b (multiEnt a b)
multiEnt (Neg a) b = negEnt (multiEnt a b)
