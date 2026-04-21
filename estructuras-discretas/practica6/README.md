# Práctica 6 – Árboles Binarios

## Objetivo

Implementar funciones recursivas sobre árboles binarios en Haskell utilizando tipos algebraicos. También se representan gráficamente árboles binarios mediante Mermaid, se analizan distintos recorridos y se verifican propiedades como el balanceo y la construcción de árboles binarios de búsqueda.

## Tiempo requerido

El tiempo estimado para completar esta práctica es de aproximadamente 7 horas, considerando la implementación de funciones, pruebas unitarias y documentación.

---

## Representaciones gráficas con Mermaid

### Árbol binario 1 (3 niveles)

```mermaid
graph TD
A[4] --> B[Vacio]
A --> C[3]
C --> D[Vacio]
C --> E[5]
E --> F[Vacio]
E --> G[Vacio]
```

---

### Árbol binario 2 (4 niveles)

```mermaid
graph TD
A[3] --> B[7]
A --> C[6]

B --> D[12]
B --> E[Vacio]

D --> F[Vacio]
D --> G[Vacio]

C --> H[11]
C --> I[10]

H --> J[Vacio]
H --> K[Vacio]

I --> L[Vacio]
I --> M[Vacio]
```

---

## Árboles solicitados en la práctica

### a) `AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))`

```mermaid
graph TD
A[4] --> B[Vacio]
A --> C[3]

C --> D[Vacio]
C --> E[5]

E --> F[Vacio]
E --> G[Vacio]
```

---

### b) `AB 3 (AB 7 (AB 12 Vacio Vacio) Vacio) (AB 6 (AB 11 Vacio Vacio) (AB 10 Vacio Vacio))`

```mermaid
graph TD
A[3] --> B[7]
A --> C[6]

B --> D[12]
B --> E[Vacio]

D --> F[Vacio]
D --> G[Vacio]

C --> H[11]
C --> I[10]

H --> J[Vacio]
H --> K[Vacio]

I --> L[Vacio]
I --> M[Vacio]
```

---

### c) `AB 8 (AB 6 (AB 1 Vacio (AB 4 (AB 2 Vacio Vacio) Vacio)) (AB 7 Vacio Vacio)) (AB 15 Vacio Vacio)`

```mermaid
graph TD
A[8] --> B[6]
A --> C[15]

B --> D[1]
B --> E[7]

D --> F[Vacio]
D --> G[4]

G --> H[2]
G --> I[Vacio]

H --> J[Vacio]
H --> K[Vacio]

E --> L[Vacio]
E --> M[Vacio]

C --> N[Vacio]
C --> O[Vacio]
```

---

## Pregunta 7

### ¿El árbol resultante con foldl o foldr es un BST balanceado?

No necesariamente. El árbol generado depende del orden de los elementos en la lista. Si la lista está ordenada, el árbol resultante será degenerado y perderá el balance.

### ¿Cuál sería la idea para que foldr o foldl generen BST balanceados?

La idea es ordenar previamente la lista y seleccionar el elemento medio como raíz. Posteriormente se divide la lista en dos sublistas (izquierda y derecha) y se repite el proceso de forma recursiva.

### Ventajas de foldl sobre foldr

* Procesa la lista de izquierda a derecha.
* Es más eficiente con evaluación estricta.
* Funciona mejor para acumuladores grandes.

### Ventajas de foldr sobre foldl

* Permite trabajar con evaluación perezosa.
* Funciona con listas infinitas.
* Es útil para construir estructuras recursivas.

---

## Comentarios adicionales

Todas las funciones fueron implementadas de forma recursiva sin utilizar `foldl`, `foldr`, `maximum` o `minimum`, siguiendo los lineamientos de la práctica. Se incluyen pruebas unitarias con HUnit para validar el comportamiento esperado.
<img width="1018" height="605" alt="image" src="https://github.com/user-attachments/assets/f69a38ae-dd68-42f5-b02c-71dfb2d964a1" />


