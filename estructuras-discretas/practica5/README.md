# Práctica 05 - Listas por Recursión

## Objetivo

El objetivo de esta práctica es implementar funciones recursivas en Haskell para manipular listas y cadenas. Se busca reforzar el uso de recursión estructural, manejo de listas y la definición de funciones auxiliares sin utilizar funciones predefinidas restringidas del lenguaje.

## Tiempo requerido

El tiempo estimado para completar la práctica fue de aproximadamente 3 a 4 horas, incluyendo la implementación de funciones, comentarios y pruebas unitarias.

## Funciones implementadas

Se implementaron las siguientes funciones de manera recursiva:

* hollerBack: Convierte una cadena a mayúsculas.
* decimal_binario: Convierte un número decimal a binario.
* replica: Genera una lista con n repeticiones de un elemento.
* recuperaElemento: Obtiene un elemento por índice.
* rota: Rota una lista n veces.
* extranio: Simula la secuencia del algoritmo de Collatz.

Todas las funciones fueron implementadas sin el uso de funciones restringidas como head, tail, init y last.

## ¿Qué es la recursión de cola?

La recursión de cola es un tipo de recursión donde la llamada recursiva es la última operación que realiza la función. Esto significa que no queda ningún cálculo pendiente después de la llamada recursiva. Este tipo de recursión es importante porque permite que el compilador optimice el uso de memoria, evitando el crecimiento de la pila de llamadas y haciendo el programa más eficiente.

## Relación entre foldr y foldl con la recursión de cola

foldl está relacionado con la recursión de cola porque evalúa los elementos de izquierda a derecha acumulando el resultado, y la llamada recursiva es la última operación que se realiza. Por esta razón, foldl puede optimizarse como recursión de cola.

Por otro lado, foldr no es recursión de cola porque primero construye las llamadas recursivas y después aplica la función, dejando operaciones pendientes en la pila. Esto hace que foldr consuma más memoria en listas grandes.

## Comentarios adicionales

Se implementaron funciones auxiliares para evitar el uso de funciones prohibidas del lenguaje. Las pruebas unitarias fueron ejecutadas usando HUnit y todas las funciones superaron los casos de prueba.
