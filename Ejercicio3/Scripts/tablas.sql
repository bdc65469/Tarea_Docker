USE taller;

-- Crear la tabla personas
CREATE TABLE IF NOT EXISTS personas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    edad INT CHECK (edad >= 0),
    email VARCHAR(100) UNIQUE
);

-- Crear la tabla coches
CREATE TABLE IF NOT EXISTS coches (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    año INT CHECK (año >= 1886), -- Año del primer automóvil
    propietario_id INT,
    FOREIGN KEY (propietario_id) REFERENCES personas(id) ON DELETE SET NULL
);