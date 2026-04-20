# AVANCE — sistemas-distribuidos-bd

## ¿Qué hace este repositorio?
Contiene la base de datos del sistema. Usa **PostgreSQL** como motor de base de datos y **Liquibase** para controlar las migraciones (cambios en la BD de forma ordenada y sin repetir scripts).

---

## ¿Qué es Liquibase?
Liquibase es una herramienta que ejecuta scripts SQL en orden y lleva un registro de cuáles ya se ejecutaron. Así, si agregas un script nuevo, solo corre ese y no vuelve a tocar los anteriores.

---

## Estructura del repositorio

```
sistemas-distribuidos-bd/
├── changelog/
│   ├── changelog-master.xml     ← Lista maestra de scripts a ejecutar
│   ├── 001-crear-tablas.sql     ← Crea las tablas usuarios y productos
│   └── 002-datos-iniciales.sql  ← Inserta el usuario admin inicial
├── Dockerfile                   ← Imagen Docker con Liquibase
├── docker-compose.yml           ← Levanta PostgreSQL + Liquibase juntos
└── AVANCE.md                    ← Este archivo
```

---

## Tablas creadas

### `usuarios`
Guarda los usuarios que pueden iniciar sesión.

| Campo    | Tipo         | Descripción              |
|----------|--------------|--------------------------|
| id       | SERIAL PK    | ID automático            |
| username | VARCHAR(50)  | Nombre de usuario único  |
| password | VARCHAR(255) | Contraseña               |
| rol      | VARCHAR(20)  | Rol del usuario (admin)  |

### `productos`
Guarda los productos del inventario.

| Campo          | Tipo          | Descripción                  |
|----------------|---------------|------------------------------|
| id             | SERIAL PK     | ID automático                |
| nombre         | VARCHAR(100)  | Nombre del producto          |
| descripcion    | TEXT          | Descripción opcional         |
| cantidad       | INTEGER       | Unidades disponibles         |
| precio         | DECIMAL(10,2) | Precio con 2 decimales       |
| fecha_creacion | TIMESTAMP     | Fecha de creación automática |

---

## Datos iniciales
Se inserta un usuario administrador al iniciar:
- **Usuario:** admin
- **Contraseña:** admin123

---

## Historial de cambios

| Fecha      | Rama | Descripción                                      |
|------------|------|--------------------------------------------------|
| 2026-04-20 | dev  | Estructura inicial: scripts DDL, DML y Liquibase |
