-- Creación de tablas para el sistema de Inmobiliaria
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(20)
);

CREATE TABLE propiedades (
    id_propiedad INT PRIMARY KEY,
    direccion VARCHAR(255),
    precio DECIMAL(12, 2),
    estado VARCHAR(20) -- Disponible, Vendida
    habitaciones INT,
    banos INT,
);

-- Tu consulta favorita: Buscar casas por rango de precio
SELECT direccion, precio 
FROM propiedades 
WHERE estado = 'Disponible' AND precio BETWEEN 100000 AND 500000
ORDER BY precio ASC;
