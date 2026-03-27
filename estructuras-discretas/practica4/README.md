# Práctica 04: Números Naturales y Recursión

## Objetivo

El objetivo de esta práctica es implementar funciones recursivas utilizando tipos de datos algebraicos definidos por el usuario en Haskell. Se busca comprender la representación de números naturales, enteros y estructuras anidadas (matrioskas), así como el uso de la recursión para definir operaciones matemáticas básicas y manipulación de estructuras.

## Tiempo requerido

El tiempo estimado para la realización de esta práctica es de 3 a 4 horas, considerando la implementación de las funciones, pruebas en GHCi, documentación y comparación de archivos.

## Estructuras de datos utilizadas

```haskell
data Natural = Cero | S Natural deriving (Eq, Show)
data Entero = Zero | Succ Entero | Neg Entero deriving (Eq, Show)
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)
```

Estas estructuras permiten representar:

* Números naturales mediante sucesores.
* Números enteros con signo positivo y negativo.
* Matrioskas como estructuras anidadas.

## Actividades realizadas

### 1. Conversión de entero a Natural

Se implementó la función `a_natural`, la cual convierte un entero no negativo a su representación en el tipo `Natural`.

Ejemplos de uso:

```
ghci> a_natural 0
Cero

ghci> a_natural 2
S (S Cero)
```

### 2. Conversión de Natural a entero

Se definió la función `a_entero` para obtener el valor entero correspondiente a un número natural.

Ejemplos:

```
ghci> a_entero Cero
0

ghci> a_entero (S (S (S Cero)))
3
```

### 3. Potencia de números naturales

Se implementó la función `potenciaNat`, la cual eleva un número natural a otro natural usando recursión.

Ejemplo:

```
ghci> potenciaNat (S (S (S Cero))) (S (S Cero))
S (S (S (S (S (S (S (S (S Cero))))))))
```

### 4. Factorial de un número natural

Se definió la función `facNat` que calcula el factorial de un número natural.

Ejemplo:

```
ghci> facNat (S (S (S Cero)))
S (S (S (S (S (S Cero)))))
```

### 5. Multiplicación de enteros

Se implementó la función `multiEnt` que multiplica dos valores del tipo `Entero`, considerando signos positivos y negativos.

Ejemplo:

```
ghci> multiEnt (Neg (Succ (Succ (Succ (Succ Zero))))) (Succ (Succ Zero))
Neg (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))
```

### 6. Comparación de matrioskas

La función `mayorIgual` compara dos matrioskas y devuelve `True` si la primera contiene al menos tantas capas como la segunda.

Ejemplos:

```
ghci> mayorIgual Mati Mati
True

ghci> mayorIgual (Cont (Cont Mati)) (Cont (Cont (Cont Mati)))
False
```

### 7. Aplanar matrioskas

Se implementó la función `aplana` que convierte una matrioska anidada en una lista desde la más externa hasta la más interna.

Ejemplos:

```
ghci> aplana Mati
[Mati]

ghci> aplana (Cont (Cont Mati))
[Cont (Cont Mati), Cont Mati, Mati]
```

## Análisis de archivos enteros.hs y entero.hs

### 1. Diferencia entre las operaciones implementadas

La principal diferencia entre ambos archivos es la forma en que se manejan los casos de los números enteros.
En `entero.hs` las operaciones se definen de forma más directa, considerando únicamente los casos básicos y dejando que algunas combinaciones se resuelvan mediante recursión indirecta.

Por otro lado, en `enteros.hs` se contemplan explícitamente más combinaciones posibles entre números positivos y negativos, lo que hace que las funciones sean más completas y robustas. En esta implementación se analizan cuidadosamente todos los casos posibles para evitar ambigüedades o resultados incorrectos.

### 2. ¿Por qué se implementa mayorEnt en enteros.hs?

La operación `mayorEnt` se implementa para poder comparar dos valores del tipo `Entero`. Esta función es necesaria para definir correctamente otras operaciones, ya que permite determinar cuál número es mayor y manejar adecuadamente los signos positivos y negativos. Además, facilita la implementación de operaciones como resta o comparación que requieren conocer el orden entre los valores.

### 3. Implementación preferida

Si se tuviera que elegir una sola implementación, sería preferible quedarse con la del archivo `enteros.hs`, ya que contempla más casos y maneja de forma explícita las diferentes combinaciones entre números positivos y negativos. Esto hace que el código sea más claro, más seguro y menos propenso a errores. Aunque puede ser más largo, resulta más completo y fácil de mantener.

## Comentarios adicionales

* Todas las funciones fueron implementadas utilizando recursión estructural.
* Se realizaron pruebas en GHCi para validar cada función.
* Se documentaron ejemplos de uso en cada función.
## Captura de ejecución

![Ejecución en GHCi](<img width="535" height="253" alt="image" src="https://github.com/user-attachments/assets/252c019e-3577-4a9f-a67b-298e8e4f9d23" />

)
