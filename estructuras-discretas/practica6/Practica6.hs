module Practica6 where

import Auxiliar

-- Tipo de dato
data Arbol a = Vacio | AB a (Arbol a) (Arbol a)
    deriving (Eq, Ord, Show)

-- Tipo para recorridos
data Recorrido = InOrden | PreOrden | PosOrden
    deriving (Eq, Show)

{- 
Función: nVacios
Descripción: Cuenta los nodos vacíos en un árbol
-}
nVacios :: Arbol a -> Int
nVacios Vacio = 1
nVacios (AB _ izq der) = nVacios izq + nVacios der


{- 
Función: refleja
Descripción: Intercambia subárbol izquierdo y derecho
-}
refleja :: Arbol a -> Arbol a
refleja Vacio = Vacio
refleja (AB r izq der) = AB r (refleja der) (refleja izq)


{- 
Función: minimo
Descripción: Devuelve el elemento mínimo del árbol
-}
minimo :: Ord a => Arbol a -> a
minimo Vacio = error "Arbol vacio"
minimo (AB r Vacio Vacio) = r
minimo (AB r Vacio der) = minimoAux r (minimo der)
minimo (AB r izq Vacio) = minimoAux r (minimo izq)
minimo (AB r izq der) = minimoAux r (minimoAux (minimo izq) (minimo der))


{- 
Función: recorrido
Descripción: Devuelve lista según recorrido
-}
recorrido :: Arbol a -> Recorrido -> [a]
recorrido Vacio _ = []

recorrido (AB r izq der) InOrden =
    recorrido izq InOrden ++ [r] ++ recorrido der InOrden

recorrido (AB r izq der) PreOrden =
    [r] ++ recorrido izq PreOrden ++ recorrido der PreOrden

recorrido (AB r izq der) PosOrden =
    recorrido izq PosOrden ++ recorrido der PosOrden ++ [r]


{- 
Función auxiliar: altura
Descripción: calcula altura del árbol
-}
altura :: Arbol a -> Int
altura Vacio = 0
altura (AB _ izq der) = 1 + max (altura izq) (altura der)


{- 
Función: esBalanceado
Descripción: verifica si árbol está balanceado
-}
esBalanceado :: Arbol a -> Bool
esBalanceado Vacio = True
esBalanceado (AB _ izq der) =
    abs (altura izq - altura der) <= 1 &&
    esBalanceado izq &&
    esBalanceado der


{- 
Función auxiliar: inserta
Descripción: inserta elemento en BST
-}
inserta :: Ord a => a -> Arbol a -> Arbol a
inserta x Vacio = AB x Vacio Vacio
inserta x (AB r izq der)
    | x == r = AB r izq der
    | x < r  = AB r (inserta x izq) der
    | x > r  = AB r izq (inserta x der)


{- 
Función: listaArbol
Descripción: convierte lista a árbol BST
-}
listaArbol :: Ord a => [a] -> Arbol a
listaArbol xs = aux xs Vacio
  where
    aux [] arbol = arbol
    aux (y:ys) arbol = aux ys (inserta y arbol)
