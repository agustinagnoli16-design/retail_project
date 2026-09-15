create database retail_project;
create table clientes (
id_clientes serial primary key,
Nombre varchar(100) not null ,
email varchar not null unique,
edad integer check (edad>17));
create table productos (
id_productos serial primary key,
nombre varchar not null,
categoria varchar,
precio decimal(10,2) check (precio>0),
stock integer check (stock>-1));
create table ventas (
id_venta serial primary key,
id_clientes integer references clientes(id_clientes),
id_productos integer references productos(id_productos),
fecha DATE,
cantidad INTEGER CHECK (cantidad > 0));
BEGIN;
insert into clientes (nombre, email, edad) values 
('marcelo vega', 'marcelovega@gmail.com', 37),
('joelmartinez', 'joelmartinez@gmail.com', 28),
('elias torancio', 'eliastorancio@gmail.com.ar', 30),
('nahuel yzaurralde', 'yza1899@gmail.com', 23),
('fernando cosciuc', 'fercosciuc@yahoo.com', 29);
insert into productos (nombre, categoria, precio, stock) values 
('botin nike f90', 'futbol', 150000.00, 30), 
('camiseta argentino de quilmes', 'futbol', 113458.80, 20), 
('pelota wilson n7', 'basket', 120000.00, 17), 
('camiseta peñarol mdp', 'basket', 80000.00, 11), 
('camiseta blue jays', 'baseball', 150000.00, 8);
INSERT INTO ventas (id_clientes, id_productos, fecha, cantidad) VALUES
(1, 1, '2026-09-01', 2), 
(1, 4, '2026-08-20', 1), 
(4, 5, '2026-09-10', 1), 
(5, 2, '2026-09-11', 3), 
(2, 2, '2026-09-11', 1);
COMMIT;
UPDATE productos
SET precio = precio * 1.05
WHERE categoria = 'futbol';
SELECT * FROM ventas
WHERE id_venta = 5;
DELETE FROM ventas
WHERE id_venta = 5;