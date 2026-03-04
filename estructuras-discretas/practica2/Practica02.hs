-- Práctica 02: Introducción Haskell
-- Estructuras Discretas, UNAM 2026-II


import Data.Bits ((.&.))

-- 2. sayHello
-- Recibe un String y concatena "Hello, " al principio y " !" al final.
sayHello :: String -> String
sayHello s = "Hello, " ++ s ++ " !"

-- 3. calcularPropina
-- Calcula la propina del 10% de la cuenta (puedes modificar el porcentaje).
calcularPropina :: Int -> Int
calcularPropina cuenta = cuenta * 10 `div` 100

-- 4. menor
-- Recibe tres números y regresa el menor.
menor :: (Int, Int, Int) -> Int
menor (x, y, z) = min x (min y z)

-- 5. decide
-- Recibe un booleano y dos cadenas, regresa la primera si es True, la segunda si False.
decide :: Bool -> String -> String -> String
decide cond s1 s2 = if cond then s1 else s2

-- 6. esDescendiente
-- Recibe 4 enteros. Verdadero si están en orden descendente estricto.
esDescendiente :: Int -> Int -> Int -> Int -> Bool
esDescendiente x y z w = x > y && y > z && z > w

-- 7. esDivisible
-- Recibe dos enteros x, y y devuelve mensaje correspondiente.
esDivisible :: Int -> Int -> String
esDivisible x y
  | y == 0 = "No se puede dividir entre cero"
  | x `mod` y == 0 = show x ++ " es divisible por " ++ show y
  | otherwise = show x ++ " no es divisible por " ++ show y

-- 8. esPar
-- Verifica si n es par usando operaciones a nivel de bits.
esPar :: Int -> Bool
esPar n = (n .&. 1) == 0

-- 9. hipotenusa
-- Recibe dos flotantes (base y altura) y devuelve la hipotenusa usando sqrt.
hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt (b * b + h * h)

-- 10. pendiente
-- Recibe dos tuplas (x1, y1), (x2, y2), y calcula la pendiente.
pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (x1, y1) (x2, y2)
  | x2 == x1 = error "La pendiente es indefinida (division entre cero)"
  | otherwise = (y2 - y1) / (x2 - x1)

-- 11. distanciaPuntos
-- Recibe dos tuplas y devuelve la distancia euclidiana.
distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) =
  sqrt ((x2 - x1)^2 + (y2 - y1)^2)

-- 12. cuadrados (Extra)
-- Recibe una lista y regresa una lista de los cuadrados, sin map ni recursión.
cuadrados :: [Int] -> [Int]
cuadrados xs = [x*x | x <- xs]

