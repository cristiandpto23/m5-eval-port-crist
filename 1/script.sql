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
