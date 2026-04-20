# Práctica 6 - Árboles Binarios

**Nombre:** María Fernanda Barrios Vega
**Materia:** Estructuras Discretas
**Semestre:** 2026-I

## Objetivo

El objetivo de esta práctica es implementar funciones recursivas sobre árboles binarios utilizando tipos de datos algebraicos en Haskell. También se busca representar visualmente árboles binarios mediante la herramienta Mermaid.

## Tiempo requerido

Aproximadamente 4 horas.

---

# Representaciones Gráficas

## Árbol 1 (3 niveles)

```mermaid
graph TB
A[5] --> B[3]
A --> C[8]
B --> D[1]
B --> E[Vacio]
C --> F[7]
C --> G[9]
```

## Árbol 2 (4 niveles)

```mermaid
graph TB
A[10] --> B[6]
A --> C[15]
B --> D[3]
B --> E[8]
D --> F[1]
D --> G[4]
C --> H[Vacio]
C --> I[20]
```

---

# Árboles solicitados

## a) AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))

```mermaid
graph TB
A[4] --> B[Vacio]
A --> C[3]
C --> D[Vacio]
C --> E[5]
E --> F[Vacio]
E --> G[Vacio]
```

## b) AB 3 (AB 7 (AB 12 Vacio Vacio) Vacio) (AB 6 (AB 11 Vacio Vacio) (AB 10 Vacio Vacio))

```mermaid
graph TB
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

## c) AB 8 (AB 6 (AB 1 Vacio (AB 4 (AB 2 Vacio Vacio) Vacio)) (AB 7 Vacio Vacio)) (AB 15 Vacio Vacio)

```mermaid
graph TB
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

# Preguntas Teóricas

### ¿El árbol resultante con foldl o foldr es balanceado?

No necesariamente. El árbol generado depende del orden de inserción y puede quedar desbalanceado.

### ¿Cómo hacer que foldl o foldr generen árboles balanceados?

Ordenando la lista previamente y tomando el elemento medio como raíz para dividir recursivamente.

### Ventajas de foldl

* Evalúa de izquierda a derecha
* Puede ser más eficiente con acumuladores
* Útil para listas grandes con evaluación estricta

### Ventajas de foldr

* Permite trabajar con listas infinitas
* Funciona mejor con evaluación perezosa
* Útil cuando se construyen estructuras recursivas

---

# Conclusión

En esta práctica se implementaron funciones recursivas sobre árboles binarios y se analizaron distintas formas de recorrido y balanceo. También se utilizó Mermaid para visualizar estructuras arbóreas, facilitando la comprensión de su organización.
