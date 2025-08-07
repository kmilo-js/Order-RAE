SELECT * FROM fidelizacion
SELECT * FROM inventario
SELECT * FROM pedido
SELECT * FROM pedido_has_producto
SELECT * FROM permisos
SELECT * FROM permisos_has_roles
SELECT * FROM produccion
SELECT * FROM producto
SELECT * FROM producto_has_venta
SELECT * FROM roles
SELECT * FROM soporte_pago
SELECT * FROM usuarios
SELECT * FROM usuarios_has_pedido
SELECT * FROM venta
SELECT * FROM venta_has_usuarios

/* Insertar roles */
INSERT INTO roles (ID_ROL,cargo) VALUES ('01','Asesor Comercial');
INSERT INTO roles (ID_ROL,cargo) VALUES ('02','Gerente');
INSERT INTO roles (ID_ROL,cargo) VALUES ('03','Jefe Logistico');
INSERT INTO roles (ID_ROL,cargo) VALUES ('04','Cliente');

SET FOREIGN_KEY_CHECKS=0;
SET FOREIGN_KEY_CHECKS=1;


SELECT * FROM usuarios WHERE nombres='pepito';
UPDATE usuarios SET roles_ID_ROL='4' WHERE nombres='pepito';

UPDATE usuarios SET roles_ID_ROL='4' WHERE roles_ID_ROL='1';

TRUNCATE TABLE usuarios;

/*INSERTAR USUARIOS*/
SELECT * FROM USUARIOS

INSERT INTO usuarios (Nombres, Apellidos, Documento, Correo_usuario, Contrase_usuario, Genero, Telefono, Estado, created_at, updated_at, roles_id)
VALUES 
('pepito','perez','1000785214','pepitoper@gmail.com','B','M','3151204562',1,NOW(),NOW(),4),
('duvan','uribe','1000745236','paramilitarimos@gmail.com','clave123','M','3115248596',1,NOW(),NOW(),2),
('Laura Andrea','Torres Ríos','1042356789','laura.torres@example.com','clave123','F','3104567890',1,NOW(),NOW(),1),
('Juan Sebastián','Ramírez Pérez','1023456781','juan.ramirez@example.com','clave123','M','3001234567',1,NOW(),NOW(),1),
('Camila Sofía','Vargas Gómez','1098765432','camila.vargas@example.com','clave123','F','3123456789',1,NOW(),NOW(),1),
('Andrés Felipe','Morales López','1032984567','andres.morales@example.com','clave123','M','3119876543',1,NOW(),NOW(),3),
('Mariana Isabel','Castro Ruiz','1012345678','mariana.castro@example.com','clave123','F','3012345678',1,NOW(),NOW(),3),
('Diego Alejandro','Paredes León','1087654321','diego.paredes@example.com','clave123','M','3176543210',1,NOW(),NOW(),3),
('Valentina María','Herrera Díaz','1056789123','valentina.herrera@correo.com','clave123','F','3187654321',1,NOW(),NOW(),4),
('Carlos Eduardo','Mejía Rincón','1065432198','carlos.mejia@example.com','clave123','M','3208765432',1,NOW(),NOW(),4),
('Juliana Fernanda','Ortega Salazar','1076543289','juliana.ortega@example.com','clave123','F','3192345678',1,NOW(),NOW(),4),
('Nicolás David','Cárdenas Prieto','1009876543','nicolas.cardenas@example.com','clave123','M','3140987654',1,NOW(),NOW(),4);
 
/* INSERTAR PRODUCTOS*/
SELECT * FROM PRODUCTO

TRUNCATE TABLE PRODUCTO;

/* Insertar permisos */
SELECT * FROM PERMISOS

INSERT INTO permisos (NOMBRE_PERMISOS, DESCRIPCION_PERMISOS) 
VALUES
('Ver productos', 'Permite visualizar los productos disponibles en el sistema'),
('Crear pedidos', 'Permite registrar un nuevo pedido'),
('Registrar ventas', 'Permite ingresar una venta al sistema'),
('Consultar inventario', 'Permite ver el stock de productos'),
('Modificar inventario', 'Permite actualizar cantidades en el inventario'),
('Generar reportes', 'Permite generar reportes generales del sistema'),
('Gestionar usuarios', 'Permite crear, editar o eliminar usuarios del sistema'),
('Ver estado de pedidos', 'Permite consultar el estado de los pedidos realizados'),
('Registrar fabricación', 'Permite ingresar el avance de producción/fabricación'),
('Ver reportes financieros', 'Permite visualizar datos financieros y contables');

/* Asesor comercial (01)*/
SELECT * FROM  PERMISOS_has_ROLES

INSERT INTO PERMISOS_has_ROLES (PERMISOS_ID, ROLES_ID) 
VALUES
('01', '01'),
('02', '01'),
('03', '01'),
('08', '01');

/* Gerente (02)*/
INSERT INTO PERMISOS_has_ROLES (PERMISOS_ID, ROLES_ID) 
VALUES
('01', '02'),
('06', '02'),
('07', '02'),
('10', '02');

/* Jefe logístico (03)*/
INSERT INTO PERMISOS_has_ROLES (PERMISOS_ID, ROLES_ID) 
VALUES
('04', '03'),
('05', '03'),
('09', '03');

/* Cliente (04)*/
INSERT INTO PERMISOS_has_ROLES (PERMISOS_ID, ROLES_ID) 
VALUES
('01', '04'),
('02', '04'),
('08', '04');

/*Insertar pedidos */
SELECT * FROM PEDIDO

INSERT INTO pedido (fecha_de_compra, fecha_de_entrega, total_de_pago, Estado_pedido, created_at, updated_at)
VALUES
('2025-06-01', '2025-06-10', 350000,'pendiente', NOW(), NOW()),
('2025-06-03', '2025-06-12', 420000,'pendiente', NOW(), NOW()),
('2025-06-04', '2025-06-14', 290000,'pendiente', NOW(), NOW()),
('2025-06-01', '2025-06-05', 310000,'pendiente', NOW(), NOW()),
('2025-06-02', '2025-06-06', 520000,'pendiente', NOW(), NOW()),
('2025-06-03', '2025-06-07', 275000,'pendiente', NOW(), NOW()),
('2025-06-04', '2025-06-08', 680000,'pendiente', NOW(), NOW()),
('2025-06-05', '2025-06-09', 430000,'pendiente', NOW(), NOW()),
('2025-06-06', '2025-06-10', 150000,'pendiente', NOW(), NOW()),
('2025-06-07', '2025-06-11', 390000,'pendiente', NOW(), NOW());


/*Insertar produccion*/
SELECT * FROM produccion

INSERT INTO produccion (Codigo_producto, Categoria_producto, Material_producto, Tipo_de_producto, Color_producto, Cantidad_producto, Estado_producto, Created_at, Updated_at, usuarios_id, producto_id)
VALUES
('REF10001', 'Sillas', 'Madera', 'Interior', 'Rojo', 10, 'En producción', NOW(), NOW(), 1, 1),
('REF10002', 'Mesas', 'Madera', 'Comedor', 'Madera Natural', 5, 'Terminado', NOW(), NOW(), 2, 2),
('REF10003', 'Sofás', 'Tela', 'Sala', 'Gris', 3, 'En espera', NOW(), NOW(), 3, 3),
('REF10004', 'Estanterías', 'Metal', 'Almacenamiento', 'Negro', 8, 'En producción', NOW(), NOW(), 4, 4),
('REF10005', 'Cunas', 'Madera', 'Infantil', 'Blanco', 6, 'Terminado', NOW(), NOW(), 5, 5),
('REF10006', 'Sillas', 'Plástico', 'Exterior', 'Azul', 15, 'En producción', NOW(), NOW(), 6, 1),
('REF10007', 'Mesas', 'Vidrio', 'Comedor', 'Transparente', 4, 'En espera', NOW(), NOW(), 7, 2),
('REF10008', 'Sofás', 'Cuero', 'Sala', 'Negro', 2, 'Terminado', NOW(), NOW(), 8, 3),
('REF10009', 'Estanterías', 'Madera', 'Oficina', 'Marrón', 9, 'En producción', NOW(), NOW(), 9, 4),
('REF10010', 'Cunas', 'Plástico', 'Infantil', 'Rosa', 7, 'En espera', NOW(), NOW(), 10, 5);

/*Insertar soporte de pago*/
SELECT * FROM soporte_pago

INSERT INTO soporte_pago (hora_pago, fecha_pago, total_pago, soporte_url, usuarios_id, venta_id, created_at, updated_at) 
VALUES
('08:15:00', '2025-06-01', 450000.00, 'soportes/pago_venta_1.pdf', 1, 1, NOW(), NOW()),
('09:30:00', '2025-06-02', 320000.00, 'soportes/pago_venta_2.pdf', 2, 2, NOW(), NOW()),
('10:45:00', '2025-06-03', 280000.00, 'soportes/pago_venta_3.pdf', 3, 3, NOW(), NOW()),
('11:10:00', '2025-06-04', 610000.00, 'soportes/pago_venta_4.pdf', 4, 4, NOW(), NOW()),
('12:25:00', '2025-06-05', 150000.00, 'soportes/pago_venta_5.pdf', 5, 5, NOW(), NOW()),
('13:40:00', '2025-06-06', 390000.00, 'soportes/pago_venta_6.pdf', 6, 6, NOW(), NOW()),
('14:55:00', '2025-06-07', 275000.00, 'soportes/pago_venta_7.pdf', 7, 7, NOW(), NOW()),
('16:05:00', '2025-06-08', 460000.00, 'soportes/pago_venta_8.pdf', 8, 8, NOW(), NOW()),
('17:20:00', '2025-06-09', 510000.00, 'soportes/pago_venta_9.pdf', 9, 9, NOW(), NOW()),
('18:35:00', '2025-06-10', 305000.00, 'soportes/pago_venta_10.pdf', 10, 10, NOW(), NOW());

SELECT * FROM inventario

INSERT INTO inventario (referencia_producto, categoria_producto, color_producto, cantidad_producto, estado_producto, created_at, updated_at, usuarios_id)
VALUES
('Bancas chinas en A x2 puestos', 'BUTACOS', 'NEGRO', '3', 'DISPONIBLE', NOW(), NOW(), 2),
('Bastidores de mecedora monterrey ', 'MESEDORAS', 'BEIGE', '7', 'DISPONIBLE', NOW(), NOW(), 2),
('Bases Canoa x4 puestos FM ', 'BASES DE COMEDOR', 'CAFÉ', '1', 'DISPONIBLE', NOW(), NOW(), 2),
('Bases Carroza Jinete cedro', 'BASES DE COMEDOR', 'BLANCO', '7', 'DISPONIBLE', NOW(), NOW(), 2),
('Bases Doble Caballo cedro', 'BASES DE COMEDOR', 'NEGRO', '2', 'DISPONIBLE', NOW(), NOW(), 2),
('Bases Duquesa x4 puestos FM', 'BASES DE COMEDOR', 'VERDE', '0', 'AGOTADO', NOW(), NOW(), 2),
('Bastidores de sillas Argelia  FM', 'MESEDORAS', 'CAFÉ', '29', 'DISPONIBLE', NOW(), NOW(), 2),
('Cajas de organizadores PINO', 'ORGANIZADORES', 'NEGRO', '10', 'DISPONIBLE', NOW(), NOW(), 2),
('Camas   Boston 1.20 cedro', 'CAMAS', 'BLANCO', '10', 'DISPONIBLE', NOW(), NOW(), 2),
('Camas    Boston 1.40 cedro', 'CAMAS', 'NEGRO', '0', 'AGOTADO', NOW(), NOW(), 2),
('Centros de entretenimiento G 1.20', 'CENTROS TV', 'CAFÉ', '3', 'DISPONIBLE', NOW(), NOW(), 2),
('Camarote GUADALUPE de 1m X 1.90 X 1.88', 'CAMAROTES', 'BLANCO', '5', 'DISPONIBLE', NOW(), NOW(), 2),
('Centros de entretenimiento S de 1.20', 'CAMAROTES', 'NEGRO', '0', 'AGOTADO', NOW(), NOW(), 2),
('Colchonetas de 70 X 1.30 de 15cm ', 'COLCHÓN', 'BLANCO', '12', 'DISPONIBLE', NOW(), NOW(), 2),
('Juegos de mesas redondas araña FM', 'MESAS', 'CAFÉ', '6', 'DISPONIBLE', NOW(), NOW(), 2),
('Sillas Argelia', 'SILLAS', 'CAFÉ', '34', 'DISPONIBLE', NOW(), NOW(), 2),
('Sillas Colombia Bombey Lisas cedro', 'SILLAS', 'CAFÉ', '18', 'DISPONIBLE', NOW(), NOW(), 2),
('Sofas Croacia x2 puestos cedro', 'SOFAS', 'AZUL', '4', 'DISPONIBLE', NOW(), NOW(), 2),
('Sofás Italianos x2 puestos cedro', 'SOFAS', 'NEGRO', '12', 'DISPONIBLE', NOW(), NOW(), 2),
('Colchones Gama Media de 1.20 X 1.40', 'COLCHÓN', 'BLANCO', '0', 'AGOTADO', NOW(), NOW(), 2),
('Colchones Gama Media de 1.20 X 1.90', 'COLCHÓN', 'BLANCO', '8', 'DISPONIBLE', NOW(), NOW(), 2),
('Mesas Estambul Dilatadas de 1.50 x 90', 'MESAS', 'CAFÉ', '12', 'DISPONIBLE', NOW(), NOW(), 2);

SELECT * FROM producto

INSERT INTO producto (referencia_producto, categoria_producto, color_producto, cantidad_producto, CREATED_AT, UPDATED_AT, usuarios_id, inventario_id) 
VALUES
('Bases Canoa x4 puestos FM ', 'BASES DE COMEDOR', 'CAFÉ', '1',NOW(),NOW(),1,1),
('Bases Carroza Jinete cedro', 'BASES DE COMEDOR', 'BLANCO', '7',NOW(),NOW(),2,2),
('Bastidores de sillas Argelia  FM', 'MESEDORAS', 'CAFÉ', '29',NOW(),NOW(),3,3),
('Camas   Boston 1.20 cedro', 'CAMAS', 'BLANCO', '10',NOW(),NOW(),4,4),
('Centros de entretenimiento G 1.20', 'CENTROS TV', 'CAFÉ', '3',NOW(),NOW(),4,4),
('Sofas Croacia x2 puestos cedro', 'SOFAS', 'AZUL', '4',NOW(),NOW(),4,4),
('Sofás Italianos x2 puestos cedro', 'SOFAS', 'NEGRO', '12',NOW(),NOW(),4,4),
('Colchones Gama Media de 1.20 X 1.40', 'COLCHÓN', 'BLANCO', '0',NOW(),NOW(),4,4),
('Mesas Estambul Dilatadas de 1.50 x 90', 'MESAS', 'CAFÉ', '12',NOW(),NOW(),4,4),
('Cajas de organizadores PINO', 'ORGANIZADORES', 'NEGRO', '10',NOW(),NOW(),5,5);

/*Insertar produccion*/
SELECT * FROM produccion

INSERT INTO produccion (Referencia_producto, Categoria_producto, Material_producto, Color_producto, Cantidad_producto, Estado_producto, Created_at, Updated_at, usuarios_id, producto_id)
VALUES
('Sofás Italianos x2 puestos cedro', 'SOFAS', 'CUERO', 'NEGRO', '12','EN PRODUCCIÓN', NOW(), NOW(), 1, 1),
('Sofás Italianos x2 puestos cedro', 'SOFAS', 'POLIESTER', 'NEGRO', '6', 'TERMINADO', NOW(), NOW(), 2, 2),
('Mesas Estambul Dilatadas de 1.50 x 90', 'MADERA - ROBLE', 'MESAS', 'CAFÉ', '1', 'EN ESPERA', NOW(), NOW(), 3, 3),
('Sofas Croacia x2 puestos cedro', 'SOFAS', 'TERCIOPELO', 'AZUL', '4', 'EN PRODUCCIÓN', NOW(), NOW(), 4, 4),
('Bases Carroza Jinete cedro', 'BASES DE COMEDOR', 'MADERA - MDF', 'BLANCO', '7', 'TERMINADO', NOW(), NOW(), 5, 5),
('Sillas Argelia', 'SILLAS', 'MADERA - BAMBÚ', 'BEIGE', '12', 'EN PRODUCCIÓN', NOW(), NOW(), 6, 1),
('Sillas Colombia Bombey Lisas cedro', 'SILLAS', 'MADERA - ROBLE', 'CAFÉ', '18', 'EN ESPERA', NOW(), NOW(), 7, 2),
('Camas Boston 1.20 cedro', 'CAMAS', 'MADERA-METAL', 'BLANCO', '4', 'TERMINADO', NOW(), NOW(), 8, 3),
('Camas Boston 1.40 cedro', 'CAMAS', 'MADERA-METAL', 'NEGRO', '0', 'EN PRODUCCIÓN', NOW(), NOW(), 9, 4),
('Bancas chinas en A x2 puestos', 'BUTACOS', 'MADERA - ROBLE', 'AZUL', '3', 'EN ESPERA', NOW(), NOW(), 10, 5);


/*insertar pedido_has_producto*/

SELECT * FROM pedido_has_producto

INSERT INTO pedido_has_producto ( pedido_id, producto_id)
VALUES
( 2, 3),
( 5, 1),
( 3, 2),
( 1, 4),
( 4, 1),
( 2, 5),
( 3, 2),
( 1, 1),
( 4, 3),
( 5, 2);

/Insertar fidelizacion/
SELECT * FROM fidelizacion

INSERT INTO fidelizacion (Fecha_de_fidelizacion, Total_de_producto, Created_at, Updated_at, usuarios_id)
VALUES
('2025-06-01', 450000.00, NOW(), NOW(), 1),
('2025-06-02', 320000.00, NOW(), NOW(), 2),
('2025-06-03', 280000.00, NOW(), NOW(), 3),
('2025-06-04', 610000.00, NOW(), NOW(), 4),
('2025-06-05', 150000.00, NOW(), NOW(), 5),
('2025-06-06', 390000.00, NOW(), NOW(), 6),
('2025-06-07', 275000.00, NOW(), NOW(), 7),
('2025-06-08', 460000.00, NOW(), NOW(), 8),
('2025-06-09', 510000.00, NOW(), NOW(), 9),
('2025-06-10', 305000.00, NOW(), NOW(), 10);

/Insertar soporte de pago/
SELECT * FROM soporte_pago

INSERT INTO soporte_pago (hora_pago, fecha_pago, total_pago, soporte_url, usuarios_id, venta_id, created_at, updated_at) 
VALUES
('08:15:00', '2025-06-01', 450000.00, 'soportes/pago_venta_1.pdf', 1, 1, NOW(), NOW()),
('09:30:00', '2025-06-02', 320000.00, 'soportes/pago_venta_2.pdf', 2, 2, NOW(), NOW()),
('10:45:00', '2025-06-03', 280000.00, 'soportes/pago_venta_3.pdf', 3, 3, NOW(), NOW()),
('11:10:00', '2025-06-04', 610000.00, 'soportes/pago_venta_4.pdf', 4, 4, NOW(), NOW()),
('12:25:00', '2025-06-05', 150000.00, 'soportes/pago_venta_5.pdf', 5, 5, NOW(), NOW()),
('13:40:00', '2025-06-06', 390000.00, 'soportes/pago_venta_6.pdf', 6, 6, NOW(), NOW()),
('14:55:00', '2025-06-07', 275000.00, 'soportes/pago_venta_7.pdf', 7, 7, NOW(), NOW()),
('16:05:00', '2025-06-08', 460000.00, 'soportes/pago_venta_8.pdf', 8, 8, NOW(), NOW()),
('17:20:00', '2025-06-09', 510000.00, 'soportes/pago_venta_9.pdf', 9, 9, NOW(), NOW()),
('18:35:00', '2025-06-10', 305000.00, 'soportes/pago_venta_10.pdf', 10, 10, NOW(), NOW());

/Insertar venta/

SELECT * FROM venta

INSERT INTO venta (nombre_producto, categoria_producto, color_producto, pedido_id, fidelizacion_id, created_at, updated_at)
VALUES
('Bases Canoa x4 puestos FM ', 'BASES DE COMEDOR', 'CAFÉ', '2', '1', NOW(), NOW()), 
('Bases Carroza Jinete cedro', 'BASES DE COMEDOR', 'BLANCO', '5', '2', NOW(), NOW()), 
('Bastidores de sillas Argelia  FM', 'MESEDORAS', 'CAFÉ', '3', '3', NOW(), NOW()), 
('Camas   Boston 1.20 cedro', 'CAMAS', 'BLANCO', '1', '4', NOW(), NOW()), 
('Centros de entretenimiento G 1.20', 'CENTROS TV', 'ROJO', '4', '5', NOW(), NOW()), 
('Sofas Croacia x2 puestos cedro', 'SOFAS', 'AZUL', '2', '6', NOW(), NOW()), 
('Sofás Italianos x2 puestos cedro', 'SOFAS', 'NEGRO', '3', '7', NOW(), NOW()), 
('Colchones Gama Media de 1.20 X 1.40', 'COLCHÓN', 'BLANCO', '1', '8', NOW(), NOW()), 
('Mesas Estambul Dilatadas de 1.50 x 90', 'MESAS', 'CAFÉ', '4', '9', NOW(), NOW()), 
('Cajas de organizadores PINO', 'ORGANIZADORES', 'NEGRO', '5', '10', NOW(), NOW());

/* Insertar Venta_Asesor */
SELECT * FROM venta_has_usuarios

INSERT INTO venta_has_usuarios (venta_id, usuarios_id)
VALUES
('1', '2'),
('2', '3'),
('3', '2'),
('4', '6'),
('5', '4'),
('6', '1'),
('7', '6'),
('8', '7'),
('9', '8'),
('10', '9');

/* Insertar producto_has_venta */
SELECT * FROM productos_has_venta

INSERT INTO producto_has_venta(venta_id, producto_id)
VALUES 
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5'),
('6', '6'),
('7', '7'),
('8', '8'),
('9', '9'),
('10', '10');

/* Insertar usuarios_has_pedido */
SELECT * FROM usuarios_has_pedido

INSERT INTO usuarios_has_pedido (pedido_id, usuarios_id)
VALUES 
('1', '3'),
('2', '4'),
('3', '5'),
('4', '6'),
('5', '7'),
('6', '8'),
('7', '9'),
('8', '10'),
('9', '11'),
('10', '12');














