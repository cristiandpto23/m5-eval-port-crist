# Módulo 5 - Evaluación de Portafolio

## 2. Utilizar Lenguaje Estructurado de Consultas (SQL) para la obtención de información que satisface los requerimientos planteados a partir de un modelo de datos dado.

### **Desarrollar consultas SQL para obtener información específica de las tablas, utilizando cláusulas como SELECT, WHERE, JOIN, GROUP BY, entre otras.**

**_Consultas varias_**

Filtrar con condiciones (obtener pedidos con montos sobre 1000)

```sql
SELECT *
FROM pedidos
WHERE monto > 1000;
```

Agrupar y ordenar datos (total de pedidos por cliente, agrupados por nombre cliente)

```sql
SELECT c.nombre, COUNT(p.id_pedido) AS total_pedidos
FROM clientes AS c
JOIN pedidos AS p ON c.id_cliente = p.id_cliente
GROUP BY c.nombre;
```

Ordenar resultados (en forma ascendente, por nombre)

```sql
SELECT *
FROM clientes
ORDER BY nombre ASC;
```

---

### **Ejemplo: Crear una consulta que obtenga todos los pedidos realizados por un cliente específico.**

Una consulta para obtener todos los pedidos realizados por un cliente específico.

```sql
SELECT p.id_pedido, p.fecha, p.monto
FROM pedidos AS p
JOIN clientes AS c ON p.id_cliente = c.id_cliente
WHERE clientes.nombre = 'Juan Carlos Bodoque';
```
