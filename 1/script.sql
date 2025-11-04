-- crear tabla clientes
create table clientes (
    id_cliente int primary key,
    nombre varchar(100) not null,
    email varchar(100) unique not null
);

-- crear tabla productos
