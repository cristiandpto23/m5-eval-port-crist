-- crear tabla clientes
create table clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- crear tabla pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    fecha DATE NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Consultas SQL básicas
-- Filtrar con condiciones (obtener pedidos con montos sobre 1000)
SELECT *
FROM pedidos
WHERE monto > 1000;


-- Agrupar y ordenar datos (total de pedidos por cliente, agrupados por nombre cliente)
SELECT c.nombre, COUNT(p.id_pedido) AS total_pedidos
FROM clientes AS c
JOIN pedidos AS p ON c.id_cliente = p.id_cliente
GROUP BY c.nombre;


-- Ordenar resultados (en forma ascendente, por nombre)
SELECT *
FROM clientes
ORDER BY nombre ASC;



-- Crear una consulta que obtenga todos los pedidos realizados por un cliente específico.
SELECT p.id_pedido, p.fecha, p.monto
FROM pedidos AS p
JOIN clientes AS c ON p.id_cliente = c.id_cliente
WHERE c.nombre = 'Juan Carlos Bodoque';