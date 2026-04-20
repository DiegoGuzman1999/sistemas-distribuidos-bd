-- Tabla de usuarios para autenticacion
CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    rol VARCHAR(20) DEFAULT 'admin'
);

-- Tabla de productos para el inventario
CREATE TABLE IF NOT EXISTS productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    cantidad INTEGER DEFAULT 0,
    precio DECIMAL(10,2),
    fecha_creacion TIMESTAMP DEFAULT NOW()
);
