# # Retail Project

Proyecto de base de datos realizado con PostgreSQL para la gestión de comercio de deportes

## Descripción

La base de datos `retail_project` contiene tres tablas principales:

- `clientes`: almacena los datos de los clientes.
- `productos`: almacena los productos, categorías, precios y stock.
- `ventas`: registra las ventas realizadas y relaciona clientes con productos mediante claves foráneas.

## Funcionalidades

El script incluye:

- Creación de la base de datos.
- Creación de tablas con claves primarias y foráneas.
- Restricciones `NOT NULL`, `UNIQUE` y `CHECK`.
- Carga de datos iniciales mediante `INSERT`.
- Uso de transacciones con `BEGIN` y `COMMIT`.
- Actualización de precios mediante `UPDATE`.
- Eliminación de registros mediante `DELETE`.

## Tecnologías utilizadas

- PostgreSQL
- pgAdmin 4
- SQL

## Ejecución

1. Ejecutar `CREATE DATABASE retail_project`.
2. Conectarse a la base de datos `retail_project`.
3. Ejecutar el resto del archivo `retail_project.sql`.

## Autor

Agustín Agnoli
