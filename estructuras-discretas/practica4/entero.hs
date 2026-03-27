module Entero where

import Auxiliar

data Entero = Zero | Succ Entero | Neg Entero deriving (Eq, Show)

-- multiEnt
multiEnt :: Entero -> Entero -> Entero
multiEnt Zero _ = Zero
multiEnt _ Zero = Zero
multiEnt (Succ a) b = sumaEnt b (multiEnt a b)
multiEnt (Neg a) b = negEnt (multiEnt a b)
