

# Actividades

---

# Actividad 1

## Diferencia entre `Num` e `Int`

La diferencia entre `Num` e `Int` es que **Num es una clase de tipo**, mientras que **Int es un tipo de dato concreto**.

Una **clase de tipo** define un conjunto de operaciones que ciertos tipos pueden implementar.
En el caso de `Num`, define operaciones numéricas como suma, resta y multiplicación.

Por otro lado, `Int` es un tipo específico que representa **números enteros con un rango limitado**, y es una instancia de la clase `Num`.

### Ejemplo en ghci

```
ghci> :t (+)
(+) :: Num a => a -> a -> a
```

Esto significa que la función suma funciona para cualquier tipo `a` que pertenezca a la clase `Num`.

```
ghci> :t (5 :: Int)
(5 :: Int) :: Int
```

Aquí vemos que `5` es un valor del tipo `Int`.

---

# Actividad 2

## Función créditos

Se creó un tipo de dato llamado `Materia` que representa algunas materias del primer semestre de Ciencias de la Computación.

Después se implementó la función `creditos` que recibe un número entero y regresa una lista con las materias que tienen ese número de créditos.

### Ejemplo

```
ghci> creditos 12
[Introduccion a las CC]

ghci> creditos 10
[Estructuras Discretas,Algebra Superior,Calculo Diferencial,Fisica I]
```

---

# Actividad 3

## Análisis de allPairs

La siguiente definición intenta generar todos los pares de números naturales.

```
allPairs = [(x,y) | x <- [0..], y <- [0..]]
```

Sin embargo esta definición **no funciona correctamente**, ya que para cada valor de `x` se intenta generar todos los valores posibles de `y` antes de pasar al siguiente `x`.

Como la lista `[0..]` es infinita, el programa nunca termina de generar los valores de `y` para `x = 0`, por lo que nunca llega a producir pares donde `x` sea mayor que 0.

Una forma de resolver este problema es generar los pares **por diagonales**, agrupándolos por la suma de sus elementos.

```
allPairs = [(x,y) | s <- [0..], x <- [0..s], y <- [s-x]]
```

De esta manera se garantiza que todos los pares aparecerán eventualmente.

---

# Actividad 4

## Función soloPares

La función recibe una lista de enteros y devuelve únicamente los números pares.

### Ejemplo

```
ghci> soloPares [1,2,3,4]
[2,4]
```

---

# Actividad 5

## Función negativos

Esta función cuenta cuántos números negativos existen dentro de una lista.

### Ejemplo

```
ghci> negativos [-1,2,4,6,-4]
2
```

---

# Actividad 6

## Función primos

Esta función recibe una lista de números y devuelve únicamente aquellos que son números primos.

### Ejemplo

```
ghci> primos [1..20]
[2,3,5,7,11,13,17,19]
```

---

# Actividad 7

## Función coprimos

Esta función recibe un número entero `n` y devuelve una lista de números menores que `n` que son coprimos con él.

Dos números son coprimos si su máximo común divisor es 1.

### Ejemplo

```
ghci> coprimos 10
[1,3,7,9]
```

---

# Commits utilizados

```
feat: add Materia data type
feat: implement creditos function
feat: implement soloPares using list comprehension
feat: implement negativos function
feat: implement primos function
feat: implement coprimos function
docs: add README documentation
```
