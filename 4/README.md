# Módulo 5 - Evaluación de Portafolio

## 4. Implementar estructuras de datos relacionales utilizando lenguaje de definición de datos (DDL) a partir de un modelo de datos para la creación y mantención de las definiciones de los objetos de una base de datos.

### Utilizar el lenguaje DDL para crear, modificar y eliminar tablas, índices y otros objetos dentro de una base de datos.

crear una tabla de empleados

```sql
CREATE TABLE empleados (
    id_empleado SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    fecha_ingreso DATE NOT NULL
);
```

modificar la tabla (agregar una nueva columna)

```sql
ALTER TABLE empleados
ADD COLUMN departamento VARCHAR(50);
```

eliminar tabla

```sql
DROP TABLE empleados;
```

---

### Ejemplo: Crear una tabla para almacenar información de empleados, con las columnas correspondientes como nombre, salario y fecha de ingreso.

```sql
CREATE TABLE empleados (
    id_empleado SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    fecha_ingreso DATE NOT NULL
);
```
