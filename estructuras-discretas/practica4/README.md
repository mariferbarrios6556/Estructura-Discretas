# Práctica 04: Números Naturales y Recursión

## Objetivo

El objetivo de esta práctica fue implementar funciones recursivas usando tipos de datos definidos por el usuario en Haskell. Se trabajó con números naturales, números enteros y estructuras anidadas llamadas matrioskas, con el fin de entender cómo representar datos y realizar operaciones mediante recursión.

## Tiempo requerido

El tiempo aproximado para realizar la práctica fue de 3 a 4 horas, considerando la implementación de las funciones, pruebas en GHCi y la elaboración del README.

## Estructuras de datos utilizadas

```haskell
data Natural = Cero | S Natural deriving (Eq, Show)
data Entero = Zero | Succ Entero | Neg Entero deriving (Eq, Show)
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)
```

Estas estructuras se utilizaron para representar números naturales mediante sucesores, números enteros con signo y matrioskas como estructuras anidadas.

## Actividades realizadas

### 1. Conversión de entero a Natural

Se implementó la función `a_natural`, la cual convierte un entero no negativo a su representación en el tipo `Natural`.

Ejemplo:

```
ghci> a_natural 2
S (S Cero)
```

### 2. Conversión de Natural a entero

La función `a_entero` convierte un valor del tipo `Natural` a su valor entero.

Ejemplo:

```
ghci> a_entero (S (S (S Cero)))
3
```

### 3. Potencia de números naturales

Se implementó la función `potenciaNat`, que eleva un número natural a la potencia de otro usando recursión.

Ejemplo:

```
ghci> potenciaNat (S (S (S Cero))) (S (S Cero))
S (S (S (S (S (S (S (S (S Cero))))))))
```

### 4. Factorial de un número natural

La función `facNat` calcula el factorial de un número natural.

Ejemplo:

```
ghci> facNat (S (S (S Cero)))
S (S (S (S (S (S Cero)))))
```

### 5. Multiplicación de enteros

Se implementó la función `multiEnt`, que multiplica dos valores del tipo `Entero`, considerando signos positivos y negativos.

### 6. Comparación de matrioskas

La función `mayorIgual` compara dos matrioskas y devuelve `True` si la primera contiene al menos tantas capas como la segunda.

Ejemplo:

```
ghci> mayorIgual (Cont (Cont Mati)) (Cont (Cont (Cont Mati)))
False
```

### 7. Aplanar matrioskas

La función `aplana` convierte una matrioska anidada en una lista desde la más externa hasta la más interna.

Ejemplo:

```
ghci> aplana (Cont (Cont Mati))
[Cont (Cont Mati), Cont Mati, Mati]
```

## Organización del proyecto

Para la práctica se crearon los siguientes archivos:

* Natural.hs
* Entero.hs
* Mati.hs
* Auxiliar.hs

Cada archivo contiene las funciones correspondientes a su estructura de datos.

## Análisis de enteros.hs y entero.hs

### Diferencias entre implementaciones

La diferencia principal entre ambos archivos es la forma en que manejan los casos de los números enteros.
En `entero.hs` las operaciones se implementan de manera más directa, mientras que en `enteros.hs` se consideran más casos, especialmente cuando se combinan números positivos y negativos.

Esto hace que la implementación de `enteros.hs` sea más completa y detallada.

### ¿Por qué se implementa mayorEnt?

La función `mayorEnt` permite comparar dos valores del tipo entero definido. Esta función es necesaria para poder implementar correctamente operaciones como la resta o la suma con signos, ya que ayuda a determinar cuál número es mayor.

### Implementación preferida

Se prefiere la implementación de `enteros.hs`, porque maneja más casos y es más clara al tratar números positivos y negativos. Aunque el código es más largo, es más completo y menos propenso a errores.

## Comentarios adicionales

Se utilizaron funciones recursivas en todos los ejercicios.
Se realizaron pruebas en GHCi para verificar el funcionamiento de cada función.
Se separó el código en módulos para una mejor organización.


## Captura de ejecución

(<img width="535" height="253" alt="image" src="https://github.com/user-attachments/assets/252c019e-3577-4a9f-a67b-298e8e4f9d23" />

)
