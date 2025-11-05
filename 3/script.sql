-- INSERT
INSERT INTO clientes (id_cliente, nombre, email)
VALUES (1, 'Tulio Triviño', 'tulio.triviño@aplaplac.cl');

INSERT INTO pedidos (id_pedido, fecha, monto, id_cliente)
VALUES (100, '2025-11-05', 75000, 1);

-- UPDATE
UPDATE clientes
SET email = 'tulio.triviño@31minutos.cl'
WHERE id_cliente = 1;

-- DELETE
DELETE FROM pedidos
WHERE id_cliente = 1;


-- Ejemplo: Crear consultas
-- Actualizar la dirección de un cliente (siempre y cuando estuviera el campo direccion en las tablas)
UPDATE clientes
SET direccion = 'Avenida Siempre Viva 123'
WHERE id_cliente = 100;

-- Eliminar un pedido no procesado (un monto = 0 puede indicar no procesado)
DELETE FROM pedidos
WHERE monto = 0;