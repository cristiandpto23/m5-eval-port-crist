# Módulo 5 - Evaluación de Portafolio

## 3. Utilizar lenguaje de manipulación de datos (DML) para la modificación de los datos existentes en una base de datos dando solución a un problema planteado.

### Implementar consultas de inserción (INSERT), actualización (UPDATE) y eliminación (DELETE) para modificar los datos dentro de las tablas.

INSERT

```sql
INSERT INTO clientes (id_cliente, nombre, email)
VALUES (1, 'Tulio Triviño', 'tulio.triviño@aplaplac.cl');
```

```sql
INSERT INTO pedidos (id_pedido, fecha, monto, id_cliente)
VALUES (100, '2025-11-05', 75000, 1);
```

UPDATE

```sql
UPDATE clientes
SET email = 'tulio.triviño@31minutos.cl'
WHERE id_cliente = 1;
```

DELETE

```sql
DELETE FROM pedidos
WHERE id_cliente = 1;
```

---

### Ejemplo: Crear una consulta que actualice la dirección de un cliente en la base de datos o elimine un pedido que no fue procesado.

Actualizar la dirección de un cliente (siempre y cuando estuviera el campo direccion en las tablas)

```sql
UPDATE clientes
SET direccion = 'Avenida Siempre Viva 123'
WHERE id_cliente = 100;
```

eliminar un pedido no procesado (un monto = 0 puede indicar no procesado)

```sql
DELETE FROM pedidos
WHERE monto = 0;
```
