-- crear una tabla de empleados
CREATE TABLE empleados (
    id_empleado SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    fecha_ingreso DATE NOT NULL
);

-- modificar la tabla (agregar una nueva columna)
ALTER TABLE empleados
ADD COLUMN departamento VARCHAR(50);

-- eliminar tabla
DROP TABLE empleados;


-- Ejemplo: Crear una tabla para almacenar información de empleados, con las columnas correspondientes como nombre, salario y fecha de ingreso.
-- (es la misma consulta que la primera, pero se repite para cumplir con la instrucción)
CREATE TABLE empleados (
    id_empleado SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    fecha_ingreso DATE NOT NULL
);