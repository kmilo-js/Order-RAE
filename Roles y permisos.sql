-- Asesor Comercial
CREATE USER 'Laura'@'localhost' IDENTIFIED BY 'clave123';
CREATE USER 'Juan'@'localhost' IDENTIFIED BY 'clave123';
CREATE USER 'Camila'@'localhost' IDENTIFIED BY 'clave123';

-- Gerente
CREATE USER 'Duvan'@'localhost' IDENTIFIED BY 'clave123';

-- Jefe Logístico
CREATE USER 'Andres'@'localhost' IDENTIFIED BY 'clave123';
CREATE USER 'Mariana'@'localhost' IDENTIFIED BY 'clave123';
CREATE USER 'Diego'@'localhost' IDENTIFIED BY 'clave123';

-- Cliente
CREATE USER 'pepito'@'localhost' IDENTIFIED BY 'B';
CREATE USER 'Valentina'@'localhost' IDENTIFIED BY 'clave123';
CREATE USER 'Carlos'@'localhost' IDENTIFIED BY 'clave123';
CREATE USER 'Nicolas'@'localhost' IDENTIFIED BY 'clave123';


-- Asignar permisos a Asesores Comerciales
-- Laura
GRANT SELECT, INSERT ON project_o_rae.venta TO 'Laura'@'localhost';
GRANT SELECT, INSERT ON project_o_rae.pedido TO 'Laura'@'localhost';
GRANT SELECT ON project_o_rae.producto TO 'Laura'@'localhost';

-- Juan
GRANT SELECT, INSERT ON project_o_rae.venta TO 'Juan'@'localhost';
GRANT SELECT, INSERT ON project_o_rae.pedido TO 'Juan'@'localhost';
GRANT SELECT ON project_o_rae.producto TO 'Juan'@'localhost';

-- Camila
GRANT SELECT, INSERT ON project_o_rae.venta TO 'Camila'@'localhost';
GRANT SELECT, INSERT ON project_o_rae.pedido TO 'Camila'@'localhost';
GRANT SELECT ON project_o_rae.producto TO 'Camila'@'localhost';

-- Asignar permisos al Gerente
-- Duvan
GRANT ALL PRIVILEGES ON project_o_rae.* TO 'Duvan'@'localhost';

-- Asignar permisos a Jefes Logísticos
-- Andrés
GRANT SELECT, UPDATE ON project_o_rae.inventario TO 'Andres'@'localhost';
GRANT SELECT, INSERT, UPDATE ON project_o_rae.produccion TO 'Andres'@'localhost';
GRANT SELECT ON project_o_rae.producto TO 'Andres'@'localhost';

-- Mariana
GRANT SELECT, UPDATE ON project_o_rae.inventario TO 'Mariana'@'localhost';
GRANT SELECT, INSERT, UPDATE ON project_o_rae.produccion TO 'Mariana'@'localhost';
GRANT SELECT ON project_o_rae.producto TO 'Mariana'@'localhost';

-- Diego
GRANT SELECT, UPDATE ON project_o_rae.inventario TO 'Diego'@'localhost';
GRANT SELECT, INSERT, UPDATE ON project_o_rae.produccion TO 'Diego'@'localhost';
GRANT SELECT ON project_o_rae.producto TO 'Diego'@'localhost';

-- Asignar permisos a Clientes
-- Pepito
GRANT SELECT, INSERT ON project_o_rae.pedido TO 'pepito'@'localhost';
GRANT SELECT ON project_o_rae.producto TO 'pepito'@'localhost';

-- Valentina
GRANT SELECT, INSERT ON project_o_rae.pedido TO 'Valentina'@'localhost';
GRANT SELECT ON project_o_rae.producto TO 'Valentina'@'localhost';

-- Carlos
GRANT SELECT, INSERT ON project_o_rae.pedido TO 'Carlos'@'localhost';
GRANT SELECT ON project_o_rae.producto TO 'Carlos'@'localhost';

-- Nicolás
GRANT SELECT, INSERT ON project_o_rae.pedido TO 'Nicolás'@'localhost';
GRANT SELECT ON project_o_rae.producto TO 'Nicolás'@'localhost';


