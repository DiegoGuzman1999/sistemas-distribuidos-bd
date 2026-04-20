-- Usuario administrador inicial
-- Contrasena: admin123 (en produccion usar hash real)
INSERT INTO usuarios (username, password, rol)
VALUES ('admin', 'admin123', 'admin')
ON CONFLICT (username) DO NOTHING;
