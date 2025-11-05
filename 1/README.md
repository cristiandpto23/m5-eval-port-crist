# Módulo 5 - Evaluación de Portafolio

## 1. Distinguir las características, rol y elementos fundamentales de una base de datos relacional para la gestión de información en una organización.

### **Describir los componentes básicos de una base de datos relacional: tablas, registros, campos, claves primarias y foráneas.**

Tablas: estructuras que almacenan datos en filas y columnas. Cada tabla representa una entidad o concepto (ejemplo: clientes, pedidos).

Registros (filas): cada fila representa un conjunto de valores que describen una instancia específica de la entidad (ejemplo, un cliente en particular).

Campos (columnas): son los atributos o propiedades de la entidad, cada columna tiene un tipo de dato definido (ejemplo, nombre, fecha, monto).

Clave primaria: campo que identifica de manera única cada registro dentro de una tabla (ejemplo, id_cliente).

Clave foránea: campo en una tabla que referencia a la clave primaria de otra tabla, estableciendo una relación entre ambas (ejemplo, id_cliente en tabla pedidos, que referencia a clientes)

---

### **Explicar cómo se gestionan y almacenan los datos en tablas y cómo se establece la relación entre ellas para satisfacer necesidades organizacionales.**

Los datos se guardan en tablas y la relación entre ellas permite mantener la integridad y facilitar consultas complejas. Por ejemplo, para gestionar pedidos asociados a clientes:

<ul>
    <ul>
        <li>La tabla <b>clientes</b> contiene los datos de los clientes, con una clave primaria <code>id_cliente</code>.</li>
        <li>La tabla pedidos almacena pedidos, con un campo <code>id_cliente</code></li> que actúa como clave foránea, para indicar qué cliente hizo cada pedido.
        <li>Así, se establece una relación entre ambas tablas.</li>
    </ul>
</ul>

---

### **Ejemplo: Crear una tabla de clientes y otra de pedidos, relacionándolas por una clave foránea.**

```sql
-- Tabla clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabla pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    fecha DATE NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
```
