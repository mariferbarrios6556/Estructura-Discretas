module Mati where

data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

-- mayorIgual
mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual Mati Mati = True
mayorIgual Mati (Cont _) = False
mayorIgual (Cont _) Mati = True
mayorIgual (Cont a) (Cont b) = mayorIgual a b

-- aplana
aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana m@(Cont x) = m : aplana x
