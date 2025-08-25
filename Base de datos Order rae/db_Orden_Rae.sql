/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.32-MariaDB : Database - project_o_rae
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project_o_rae` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

/*Table structure for table `fidelizacion` */

DROP TABLE IF EXISTS `fidelizacion`;

CREATE TABLE `fidelizacion` (
  `ID_FIDELIZACION` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_de_fidelizacion` date NOT NULL,
  `Total_de_producto` int(11) NOT NULL,
  `Created_at` datetime NOT NULL,
  `Updated_at` datetime NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`ID_FIDELIZACION`),
  KEY `usuarios_ID_USUARIO` (`usuarios_id`),
  CONSTRAINT `fidelizacion_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`ID_USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `fidelizacion` */

LOCK TABLES `fidelizacion` WRITE;

insert  into `fidelizacion`(`ID_FIDELIZACION`,`Fecha_de_fidelizacion`,`Total_de_producto`,`Created_at`,`Updated_at`,`usuarios_id`) values (1,'2025-06-01',450000,'2025-08-22 22:13:11','2025-08-22 22:13:11',1),(2,'2025-06-02',320000,'2025-08-22 22:13:11','2025-08-22 22:13:11',2),(3,'2025-06-03',280000,'2025-08-22 22:13:11','2025-08-22 22:13:11',3),(4,'2025-06-04',610000,'2025-08-22 22:13:11','2025-08-22 22:13:11',4),(5,'2025-06-05',150000,'2025-08-22 22:13:11','2025-08-22 22:13:11',5),(6,'2025-06-06',390000,'2025-08-22 22:13:11','2025-08-22 22:13:11',6),(7,'2025-06-07',275000,'2025-08-22 22:13:11','2025-08-22 22:13:11',7),(8,'2025-06-08',460000,'2025-08-22 22:13:11','2025-08-22 22:13:11',8),(9,'2025-06-09',510000,'2025-08-22 22:13:11','2025-08-22 22:13:11',9),(10,'2025-06-10',305000,'2025-08-22 22:13:11','2025-08-22 22:13:11',10);

UNLOCK TABLES;

/*Table structure for table `inventario` */

DROP TABLE IF EXISTS `inventario`;

CREATE TABLE `inventario` (
  `ID_INVENTARIO` int(11) NOT NULL AUTO_INCREMENT,
  `Referencia_producto` varchar(100) NOT NULL,
  `Categoria_producto` varchar(100) NOT NULL,
  `Color_producto` varchar(100) NOT NULL,
  `Cantidad_producto` varchar(100) NOT NULL,
  `Estado_producto` varchar(45) NOT NULL,
  `Created_at` datetime NOT NULL,
  `Updated_at` datetime NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`ID_INVENTARIO`),
  KEY `usuarios_ID_USUARIO` (`usuarios_id`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`ID_USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `inventario` */

LOCK TABLES `inventario` WRITE;

insert  into `inventario`(`ID_INVENTARIO`,`Referencia_producto`,`Categoria_producto`,`Color_producto`,`Cantidad_producto`,`Estado_producto`,`Created_at`,`Updated_at`,`usuarios_id`) values (1,'Bancas chinas en A x2 puestos','BUTACOS','NEGRO','3','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(2,'Bastidores de mecedora monterrey ','MESEDORAS','BEIGE','7','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(3,'Bases Canoa x4 puestos FM ','BASES DE COMEDOR','CAFÉ','1','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(4,'Bases Carroza Jinete cedro','BASES DE COMEDOR','BLANCO','7','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(5,'Bases Doble Caballo cedro','BASES DE COMEDOR','NEGRO','2','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(6,'Bases Duquesa x4 puestos FM','BASES DE COMEDOR','VERDE','0','AGOTADO','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(7,'Bastidores de sillas Argelia  FM','MESEDORAS','CAFÉ','29','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(8,'Cajas de organizadores PINO','ORGANIZADORES','NEGRO','10','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(9,'Camas   Boston 1.20 cedro','CAMAS','BLANCO','10','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(10,'Camas    Boston 1.40 cedro','CAMAS','NEGRO','0','AGOTADO','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(11,'Centros de entretenimiento G 1.20','CENTROS TV','CAFÉ','3','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(12,'Camarote GUADALUPE de 1m X 1.90 X 1.88','CAMAROTES','BLANCO','5','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(13,'Centros de entretenimiento S de 1.20','CAMAROTES','NEGRO','0','AGOTADO','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(14,'Colchonetas de 70 X 1.30 de 15cm ','COLCHÓN','BLANCO','12','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(15,'Juegos de mesas redondas araña FM','MESAS','CAFÉ','6','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(16,'Sillas Argelia','SILLAS','CAFÉ','34','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(17,'Sillas Colombia Bombey Lisas cedro','SILLAS','CAFÉ','18','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(18,'Sofas Croacia x2 puestos cedro','SOFAS','AZUL','4','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(19,'Sofás Italianos x2 puestos cedro','SOFAS','NEGRO','12','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(20,'Colchones Gama Media de 1.20 X 1.40','COLCHÓN','BLANCO','0','AGOTADO','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(21,'Colchones Gama Media de 1.20 X 1.90','COLCHÓN','BLANCO','8','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2),(22,'Mesas Estambul Dilatadas de 1.50 x 90','MESAS','CAFÉ','12','DISPONIBLE','2025-08-22 22:13:00','2025-08-22 22:13:00',2);

UNLOCK TABLES;

/*Table structure for table `pedido` */

DROP TABLE IF EXISTS `pedido`;

CREATE TABLE `pedido` (
  `ID_PEDIDO` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_de_compra` date NOT NULL,
  `Fecha_de_entrega` date NOT NULL,
  `Total_de_pago` int(100) NOT NULL,
  `Estado_pedido` enum('''Pendiente''','''En proceso''','''Entregado''','''Cancelado''') NOT NULL,
  `Created_at` datetime NOT NULL,
  `Updated_at` datetime NOT NULL,
  PRIMARY KEY (`ID_PEDIDO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pedido` */

LOCK TABLES `pedido` WRITE;

insert  into `pedido`(`ID_PEDIDO`,`Fecha_de_compra`,`Fecha_de_entrega`,`Total_de_pago`,`Estado_pedido`,`Created_at`,`Updated_at`) values (1,'2025-06-01','2025-06-10',350000,'','2025-08-22 22:12:43','2025-08-22 22:12:43'),(2,'2025-06-03','2025-06-12',420000,'','2025-08-22 22:12:43','2025-08-22 22:12:43'),(3,'2025-06-04','2025-06-14',290000,'','2025-08-22 22:12:43','2025-08-22 22:12:43'),(4,'2025-06-01','2025-06-05',310000,'','2025-08-22 22:12:43','2025-08-22 22:12:43'),(5,'2025-06-02','2025-06-06',520000,'','2025-08-22 22:12:43','2025-08-22 22:12:43'),(6,'2025-06-03','2025-06-07',275000,'','2025-08-22 22:12:43','2025-08-22 22:12:43'),(7,'2025-06-04','2025-06-08',680000,'','2025-08-22 22:12:43','2025-08-22 22:12:43'),(8,'2025-06-05','2025-06-09',430000,'','2025-08-22 22:12:43','2025-08-22 22:12:43'),(9,'2025-06-06','2025-06-10',150000,'','2025-08-22 22:12:43','2025-08-22 22:12:43'),(10,'2025-06-07','2025-06-11',390000,'','2025-08-22 22:12:43','2025-08-22 22:12:43');

UNLOCK TABLES;

/*Table structure for table `pedido_has_producto` */

DROP TABLE IF EXISTS `pedido_has_producto`;

CREATE TABLE `pedido_has_producto` (
  `ID_PEDIDO_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  PRIMARY KEY (`ID_PEDIDO_PRODUCTO`),
  KEY `orden_de_compra_ID_ORDEN` (`pedido_id`),
  KEY `producto_ID_PRODUCTO` (`producto_id`),
  CONSTRAINT `pedido_has_producto_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`ID_PRODUCTO`),
  CONSTRAINT `pedido_has_producto_ibfk_3` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`ID_PEDIDO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pedido_has_producto` */

LOCK TABLES `pedido_has_producto` WRITE;

insert  into `pedido_has_producto`(`ID_PEDIDO_PRODUCTO`,`pedido_id`,`producto_id`) values (1,2,3),(2,5,1),(3,3,2),(4,1,4),(5,4,1),(6,2,5),(7,3,2),(8,1,1),(9,4,3),(10,5,2);

UNLOCK TABLES;

/*Table structure for table `permisos` */

DROP TABLE IF EXISTS `permisos`;

CREATE TABLE `permisos` (
  `ID_PERMISOS` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_permisos` varchar(45) NOT NULL,
  `Descripcion_permisos` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_PERMISOS`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `permisos` */

LOCK TABLES `permisos` WRITE;

insert  into `permisos`(`ID_PERMISOS`,`Nombre_permisos`,`Descripcion_permisos`) values (1,'Ver productos','Permite visualizar los productos disponibles '),(2,'Crear pedidos','Permite registrar un nuevo pedido'),(3,'Registrar ventas','Permite ingresar una venta al sistema'),(4,'Consultar inventario','Permite ver el stock de productos'),(5,'Modificar inventario','Permite actualizar cantidades en el inventari'),(6,'Generar reportes','Permite generar reportes generales del sistem'),(7,'Gestionar usuarios','Permite crear, editar o eliminar usuarios del'),(8,'Ver estado de pedidos','Permite consultar el estado de los pedidos re'),(9,'Registrar fabricación','Permite ingresar el avance de producción/fabr'),(10,'Ver reportes financieros','Permite visualizar datos financieros y contab');

UNLOCK TABLES;

/*Table structure for table `permisos_has_roles` */

DROP TABLE IF EXISTS `permisos_has_roles`;

CREATE TABLE `permisos_has_roles` (
  `ID_PERMISOS_ROL` int(11) NOT NULL AUTO_INCREMENT,
  `permisos_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL,
  PRIMARY KEY (`ID_PERMISOS_ROL`),
  KEY `ROLES_ID_ROL` (`roles_id`),
  KEY `PERMISOS_ID_PERMISOS` (`permisos_id`),
  CONSTRAINT `permisos_has_roles_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`ID_ROL`),
  CONSTRAINT `permisos_has_roles_ibfk_2` FOREIGN KEY (`permisos_id`) REFERENCES `permisos` (`ID_PERMISOS`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `permisos_has_roles` */

LOCK TABLES `permisos_has_roles` WRITE;

insert  into `permisos_has_roles`(`ID_PERMISOS_ROL`,`permisos_id`,`roles_id`) values (1,1,1),(2,2,1),(3,3,1),(4,8,1),(5,1,2),(6,6,2),(7,7,2),(8,10,2),(9,1,2),(10,6,2),(11,7,2),(12,10,2),(13,1,2),(14,6,2),(15,7,2),(16,10,2),(17,4,3),(18,5,3),(19,9,3),(20,1,4),(21,2,4),(22,8,4);

UNLOCK TABLES;

/*Table structure for table `produccion` */

DROP TABLE IF EXISTS `produccion`;

CREATE TABLE `produccion` (
  `ID_PRODUCCION` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo_producto` varchar(100) NOT NULL,
  `Categoria_producto` varchar(45) NOT NULL,
  `Material_producto` varchar(100) NOT NULL,
  `Tipo_de_producto` varchar(100) NOT NULL,
  `Color_producto` varchar(100) NOT NULL,
  `Cantidad_producto` int(11) NOT NULL,
  `Estado_producto` varchar(45) NOT NULL,
  `Created_at` datetime NOT NULL,
  `Updated_at` datetime NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  PRIMARY KEY (`ID_PRODUCCION`),
  KEY `usuarios_ID_USUARIO` (`usuarios_id`),
  KEY `producto_ID_PRODUCTO` (`producto_id`),
  CONSTRAINT `produccion_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`ID_USUARIO`),
  CONSTRAINT `produccion_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`ID_PRODUCTO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `produccion` */

LOCK TABLES `produccion` WRITE;

insert  into `produccion`(`ID_PRODUCCION`,`Codigo_producto`,`Categoria_producto`,`Material_producto`,`Tipo_de_producto`,`Color_producto`,`Cantidad_producto`,`Estado_producto`,`Created_at`,`Updated_at`,`usuarios_id`,`producto_id`) values (1,'REF10001','Sillas','Madera','Interior','Rojo',10,'En producción','2025-08-22 22:12:51','2025-08-22 22:12:51',1,1),(2,'REF10002','Mesas','Madera','Comedor','Madera Natural',5,'Terminado','2025-08-22 22:12:51','2025-08-22 22:12:51',2,2),(3,'REF10003','Sofás','Tela','Sala','Gris',3,'En espera','2025-08-22 22:12:51','2025-08-22 22:12:51',3,3),(4,'REF10004','Estanterías','Metal','Almacenamiento','Negro',8,'En producción','2025-08-22 22:12:51','2025-08-22 22:12:51',4,4),(5,'REF10005','Cunas','Madera','Infantil','Blanco',6,'Terminado','2025-08-22 22:12:51','2025-08-22 22:12:51',5,5),(6,'REF10006','Sillas','Plástico','Exterior','Azul',15,'En producción','2025-08-22 22:12:51','2025-08-22 22:12:51',6,1),(7,'REF10007','Mesas','Vidrio','Comedor','Transparente',4,'En espera','2025-08-22 22:12:51','2025-08-22 22:12:51',7,2),(8,'REF10008','Sofás','Cuero','Sala','Negro',2,'Terminado','2025-08-22 22:12:51','2025-08-22 22:12:51',8,3),(9,'REF10009','Estanterías','Madera','Oficina','Marrón',9,'En producción','2025-08-22 22:12:51','2025-08-22 22:12:51',9,4),(10,'REF10010','Cunas','Plástico','Infantil','Rosa',7,'En espera','2025-08-22 22:12:51','2025-08-22 22:12:51',10,5);

UNLOCK TABLES;

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `ID_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT,
  `Referencia_producto` varchar(45) NOT NULL,
  `Nombre_producto` varchar(45) NOT NULL,
  `Categoria_producto` varchar(100) NOT NULL,
  `Color_producto` varchar(100) NOT NULL,
  `Cantidad_producto` int(11) NOT NULL,
  `Created_at` datetime NOT NULL,
  `Updated_at` datetime NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `inventario_id` int(11) NOT NULL,
  PRIMARY KEY (`ID_PRODUCTO`),
  KEY `usuarios_ID_USUARIO` (`usuarios_id`),
  KEY `inventario_ID_INVENTARIO` (`inventario_id`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`ID_USUARIO`),
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`inventario_id`) REFERENCES `inventario` (`ID_INVENTARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `producto` */

LOCK TABLES `producto` WRITE;

insert  into `producto`(`ID_PRODUCTO`,`Referencia_producto`,`Nombre_producto`,`Categoria_producto`,`Color_producto`,`Cantidad_producto`,`Created_at`,`Updated_at`,`usuarios_id`,`inventario_id`) values (1,'Bases Canoa x4 puestos FM ','','BASES DE COMEDOR','CAFÉ',1,'2025-08-22 22:13:04','2025-08-22 22:13:04',1,1),(2,'Bases Carroza Jinete cedro','','BASES DE COMEDOR','BLANCO',7,'2025-08-22 22:13:04','2025-08-22 22:13:04',2,2),(3,'Bastidores de sillas Argelia  FM','','MESEDORAS','CAFÉ',29,'2025-08-22 22:13:04','2025-08-22 22:13:04',3,3),(4,'Camas   Boston 1.20 cedro','','CAMAS','BLANCO',10,'2025-08-22 22:13:04','2025-08-22 22:13:04',4,4),(5,'Centros de entretenimiento G 1.20','','CENTROS TV','CAFÉ',3,'2025-08-22 22:13:04','2025-08-22 22:13:04',4,4),(6,'Sofas Croacia x2 puestos cedro','','SOFAS','AZUL',4,'2025-08-22 22:13:04','2025-08-22 22:13:04',4,4),(7,'Sofás Italianos x2 puestos cedro','','SOFAS','NEGRO',12,'2025-08-22 22:13:04','2025-08-22 22:13:04',4,4),(8,'Colchones Gama Media de 1.20 X 1.40','','COLCHÓN','BLANCO',0,'2025-08-22 22:13:04','2025-08-22 22:13:04',4,4),(9,'Mesas Estambul Dilatadas de 1.50 x 90','','MESAS','CAFÉ',12,'2025-08-22 22:13:04','2025-08-22 22:13:04',4,4),(10,'Cajas de organizadores PINO','','ORGANIZADORES','NEGRO',10,'2025-08-22 22:13:04','2025-08-22 22:13:04',5,5);

UNLOCK TABLES;

/*Table structure for table `producto_has_venta` */

DROP TABLE IF EXISTS `producto_has_venta`;

CREATE TABLE `producto_has_venta` (
  `ID_PRODUCTO_HAS_VENTA` int(11) NOT NULL AUTO_INCREMENT,
  `venta_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  PRIMARY KEY (`ID_PRODUCTO_HAS_VENTA`),
  KEY `producto_id` (`producto_id`),
  KEY `ventas_id` (`venta_id`),
  CONSTRAINT `producto_has_venta_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`ID_PRODUCTO`),
  CONSTRAINT `producto_has_venta_ibfk_2` FOREIGN KEY (`venta_id`) REFERENCES `venta` (`ID_VENTA`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `producto_has_venta` */

LOCK TABLES `producto_has_venta` WRITE;

insert  into `producto_has_venta`(`ID_PRODUCTO_HAS_VENTA`,`venta_id`,`producto_id`) values (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);

UNLOCK TABLES;

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `ID_ROL` int(11) NOT NULL,
  `Cargo` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_ROL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `roles` */

LOCK TABLES `roles` WRITE;

insert  into `roles`(`ID_ROL`,`Cargo`) values (1,'Asesor Comercial'),(2,'Gerente'),(3,'Jefe Logistico'),(4,'Cliente');

UNLOCK TABLES;

/*Table structure for table `soporte_pago` */

DROP TABLE IF EXISTS `soporte_pago`;

CREATE TABLE `soporte_pago` (
  `ID_SOPORTE_PAGO` int(11) NOT NULL AUTO_INCREMENT,
  `Hora_pago` time NOT NULL,
  `Fecha_pago` date NOT NULL,
  `Total_pago` decimal(10,2) NOT NULL,
  `Soporte_url` varchar(255) NOT NULL,
  `Created_at` datetime NOT NULL,
  `Updated_at` datetime NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `venta_id` int(11) NOT NULL,
  PRIMARY KEY (`ID_SOPORTE_PAGO`),
  KEY `usuarios_ID_USUARIO` (`usuarios_id`),
  KEY `venta_ID_VENTA` (`venta_id`),
  CONSTRAINT `soporte_pago_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`ID_USUARIO`),
  CONSTRAINT `soporte_pago_ibfk_2` FOREIGN KEY (`venta_id`) REFERENCES `venta` (`ID_VENTA`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `soporte_pago` */

LOCK TABLES `soporte_pago` WRITE;

insert  into `soporte_pago`(`ID_SOPORTE_PAGO`,`Hora_pago`,`Fecha_pago`,`Total_pago`,`Soporte_url`,`Created_at`,`Updated_at`,`usuarios_id`,`venta_id`) values (1,'08:15:00','2025-06-01',450000.00,'soportes/pago_venta_1.pdf','2025-08-22 22:12:55','2025-08-22 22:12:55',1,1),(2,'09:30:00','2025-06-02',320000.00,'soportes/pago_venta_2.pdf','2025-08-22 22:12:55','2025-08-22 22:12:55',2,2),(3,'10:45:00','2025-06-03',280000.00,'soportes/pago_venta_3.pdf','2025-08-22 22:12:55','2025-08-22 22:12:55',3,3),(4,'11:10:00','2025-06-04',610000.00,'soportes/pago_venta_4.pdf','2025-08-22 22:12:55','2025-08-22 22:12:55',4,4),(5,'12:25:00','2025-06-05',150000.00,'soportes/pago_venta_5.pdf','2025-08-22 22:12:55','2025-08-22 22:12:55',5,5),(6,'13:40:00','2025-06-06',390000.00,'soportes/pago_venta_6.pdf','2025-08-22 22:12:55','2025-08-22 22:12:55',6,6),(7,'14:55:00','2025-06-07',275000.00,'soportes/pago_venta_7.pdf','2025-08-22 22:12:55','2025-08-22 22:12:55',7,7),(8,'16:05:00','2025-06-08',460000.00,'soportes/pago_venta_8.pdf','2025-08-22 22:12:55','2025-08-22 22:12:55',8,8),(9,'17:20:00','2025-06-09',510000.00,'soportes/pago_venta_9.pdf','2025-08-22 22:12:55','2025-08-22 22:12:55',9,9),(10,'18:35:00','2025-06-10',305000.00,'soportes/pago_venta_10.pdf','2025-08-22 22:12:55','2025-08-22 22:12:55',10,10),(11,'08:15:00','2025-06-01',450000.00,'soportes/pago_venta_1.pdf','2025-08-22 22:13:15','2025-08-22 22:13:15',1,1),(12,'09:30:00','2025-06-02',320000.00,'soportes/pago_venta_2.pdf','2025-08-22 22:13:15','2025-08-22 22:13:15',2,2),(13,'10:45:00','2025-06-03',280000.00,'soportes/pago_venta_3.pdf','2025-08-22 22:13:15','2025-08-22 22:13:15',3,3),(14,'11:10:00','2025-06-04',610000.00,'soportes/pago_venta_4.pdf','2025-08-22 22:13:15','2025-08-22 22:13:15',4,4),(15,'12:25:00','2025-06-05',150000.00,'soportes/pago_venta_5.pdf','2025-08-22 22:13:15','2025-08-22 22:13:15',5,5),(16,'13:40:00','2025-06-06',390000.00,'soportes/pago_venta_6.pdf','2025-08-22 22:13:15','2025-08-22 22:13:15',6,6),(17,'14:55:00','2025-06-07',275000.00,'soportes/pago_venta_7.pdf','2025-08-22 22:13:15','2025-08-22 22:13:15',7,7),(18,'16:05:00','2025-06-08',460000.00,'soportes/pago_venta_8.pdf','2025-08-22 22:13:15','2025-08-22 22:13:15',8,8),(19,'17:20:00','2025-06-09',510000.00,'soportes/pago_venta_9.pdf','2025-08-22 22:13:15','2025-08-22 22:13:15',9,9),(20,'18:35:00','2025-06-10',305000.00,'soportes/pago_venta_10.pdf','2025-08-22 22:13:15','2025-08-22 22:13:15',10,10);

UNLOCK TABLES;

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Documento` int(50) NOT NULL,
  `Correo_usuario` varchar(100) NOT NULL,
  `Contrase_usuario` varchar(100) NOT NULL,
  `Genero` varchar(100) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  `Created_at` datetime NOT NULL,
  `Updated_at` datetime NOT NULL,
  `roles_id` int(11) NOT NULL,
  PRIMARY KEY (`ID_USUARIO`),
  KEY `roles_ID_ROL` (`roles_id`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`ID_ROL`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `usuarios` */

LOCK TABLES `usuarios` WRITE;

insert  into `usuarios`(`ID_USUARIO`,`Nombres`,`Apellidos`,`Documento`,`Correo_usuario`,`Contrase_usuario`,`Genero`,`Telefono`,`Estado`,`Created_at`,`Updated_at`,`roles_id`) values (1,'Carlos','Perez',1000785214,'carlos.P123@gmail.com','B','M','3151204562','1','2025-08-22 22:12:23','2025-08-22 22:12:23',4),(2,'Duvan','Uribe',1000745236,'duban.uribe50@gmail.com','clave123','M','3115248596','1','2025-08-22 22:12:23','2025-08-22 22:12:23',2),(3,'Laura Andrea','Torres Ríos',1042356789,'laura.torres@example.com','clave123','F','3104567890','1','2025-08-22 22:12:23','2025-08-22 22:12:23',1),(4,'Juan Sebastián','Ramírez Pérez',1023456781,'juan.ramirez@example.com','clave123','M','3001234567','1','2025-08-22 22:12:23','2025-08-22 22:12:23',1),(5,'Camila Sofía','Vargas Gómez',1098765432,'camila.vargas@example.com','clave123','F','3123456789','1','2025-08-22 22:12:23','2025-08-22 22:12:23',1),(6,'Andrés Felipe','Morales López',1032984567,'andres.morales@example.com','clave123','M','3119876543','1','2025-08-22 22:12:23','2025-08-22 22:12:23',3),(7,'Mariana Isabel','Castro Ruiz',1012345678,'mariana.castro@example.com','clave123','F','3012345678','1','2025-08-22 22:12:23','2025-08-22 22:12:23',3),(8,'Diego Alejandro','Paredes León',1087654321,'diego.paredes@example.com','clave123','M','3176543210','1','2025-08-22 22:12:23','2025-08-22 22:12:23',3),(9,'Valentina María','Herrera Díaz',1056789123,'valentina.herrera@correo.com','clave123','F','3187654321','1','2025-08-22 22:12:23','2025-08-22 22:12:23',4),(10,'Carlos Eduardo','Mejía Rincón',1065432198,'carlos.mejia@example.com','clave123','M','3208765432','1','2025-08-22 22:12:23','2025-08-22 22:12:23',4),(11,'Juliana Fernanda','Ortega Salazar',1076543289,'juliana.ortega@example.com','clave123','F','3192345678','1','2025-08-22 22:12:23','2025-08-22 22:12:23',4),(12,'Nicolás David','Cárdenas Prieto',1009876543,'nicolas.cardenas@example.com','clave123','M','3140987654','1','2025-08-22 22:12:23','2025-08-22 22:12:23',4);

UNLOCK TABLES;

/*Table structure for table `usuarios_has_pedido` */

DROP TABLE IF EXISTS `usuarios_has_pedido`;

CREATE TABLE `usuarios_has_pedido` (
  `ID_PEDIDO_CLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`ID_PEDIDO_CLIENTE`),
  KEY `orden_de_compra_ID_ORDEN` (`pedido_id`),
  KEY `usuarios_ID_USUARIO` (`usuarios_id`),
  CONSTRAINT `usuarios_has_pedido_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`ID_PEDIDO`),
  CONSTRAINT `usuarios_has_pedido_ibfk_2` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`ID_USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `usuarios_has_pedido` */

LOCK TABLES `usuarios_has_pedido` WRITE;

insert  into `usuarios_has_pedido`(`ID_PEDIDO_CLIENTE`,`pedido_id`,`usuarios_id`) values (1,1,3),(2,2,4),(3,3,5),(4,4,6),(5,5,7),(6,6,8),(7,7,9),(8,8,10),(9,9,11),(10,10,12);

UNLOCK TABLES;

/*Table structure for table `venta` */

DROP TABLE IF EXISTS `venta`;

CREATE TABLE `venta` (
  `ID_VENTA` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_producto` varchar(45) NOT NULL,
  `Categoria_producto` varchar(100) NOT NULL,
  `Color_producto` varchar(100) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `fidelizacion_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`ID_VENTA`),
  KEY `fidelizacion_de_clientes_ID_FIDELIZACION` (`fidelizacion_id`),
  KEY `orden_de_compra_ID_ORDEN` (`pedido_id`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`fidelizacion_id`) REFERENCES `fidelizacion` (`ID_FIDELIZACION`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`ID_PEDIDO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `venta` */

LOCK TABLES `venta` WRITE;

insert  into `venta`(`ID_VENTA`,`Nombre_producto`,`Categoria_producto`,`Color_producto`,`pedido_id`,`fidelizacion_id`,`created_at`,`updated_at`) values (1,'Bases Canoa x4 puestos FM ','BASES DE COMEDOR','CAFÉ',2,1,'2025-08-22 22:13:18','2025-08-22 22:13:18'),(2,'Bases Carroza Jinete cedro','BASES DE COMEDOR','BLANCO',5,2,'2025-08-22 22:13:18','2025-08-22 22:13:18'),(3,'Bastidores de sillas Argelia  FM','MESEDORAS','CAFÉ',3,3,'2025-08-22 22:13:18','2025-08-22 22:13:18'),(4,'Camas   Boston 1.20 cedro','CAMAS','BLANCO',1,4,'2025-08-22 22:13:18','2025-08-22 22:13:18'),(5,'Centros de entretenimiento G 1.20','CENTROS TV','ROJO',4,5,'2025-08-22 22:13:18','2025-08-22 22:13:18'),(6,'Sofas Croacia x2 puestos cedro','SOFAS','AZUL',2,6,'2025-08-22 22:13:18','2025-08-22 22:13:18'),(7,'Sofás Italianos x2 puestos cedro','SOFAS','NEGRO',3,7,'2025-08-22 22:13:18','2025-08-22 22:13:18'),(8,'Colchones Gama Media de 1.20 X 1.40','COLCHÓN','BLANCO',1,8,'2025-08-22 22:13:18','2025-08-22 22:13:18'),(9,'Mesas Estambul Dilatadas de 1.50 x 90','MESAS','CAFÉ',4,9,'2025-08-22 22:13:18','2025-08-22 22:13:18'),(10,'Cajas de organizadores PINO','ORGANIZADORES','NEGRO',5,10,'2025-08-22 22:13:18','2025-08-22 22:13:18');

UNLOCK TABLES;

/*Table structure for table `venta_has_usuarios` */

DROP TABLE IF EXISTS `venta_has_usuarios`;

CREATE TABLE `venta_has_usuarios` (
  `ID_VENTA_ASESOR` int(11) NOT NULL AUTO_INCREMENT,
  `venta_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`ID_VENTA_ASESOR`),
  KEY `venta_ID_VENTA` (`venta_id`),
  KEY `usuarios_ID_USUARIO` (`usuarios_id`),
  CONSTRAINT `venta_has_usuarios_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `venta` (`ID_VENTA`),
  CONSTRAINT `venta_has_usuarios_ibfk_2` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`ID_USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `venta_has_usuarios` */

LOCK TABLES `venta_has_usuarios` WRITE;

insert  into `venta_has_usuarios`(`ID_VENTA_ASESOR`,`venta_id`,`usuarios_id`) values (1,1,2),(2,2,3),(3,3,2),(4,4,6),(5,5,4),(6,6,1),(7,7,6),(8,8,7),(9,9,8),(10,10,9);

UNLOCK TABLES;

/*Table structure for table `v.roles` */

DROP TABLE IF EXISTS `v.roles`;

/*!50001 DROP VIEW IF EXISTS `v.roles` */;
/*!50001 DROP TABLE IF EXISTS `v.roles` */;

/*!50001 CREATE TABLE  `v.roles`(
 `Documento` int(50) ,
 `Nombres` varchar(100) ,
 `Apellidos` varchar(100) ,
 `Correo_usuario` varchar(100) ,
 `Nombre_permisos` varchar(45) ,
 `Descripcion_permisos` varchar(45) ,
 `Cargo` varchar(45) 
)*/;

/*Table structure for table `v.ventas` */

DROP TABLE IF EXISTS `v.ventas`;

/*!50001 DROP VIEW IF EXISTS `v.ventas` */;
/*!50001 DROP TABLE IF EXISTS `v.ventas` */;

/*!50001 CREATE TABLE  `v.ventas`(
 `Documento` int(50) ,
 `Nombres` varchar(100) ,
 `Apellidos` varchar(100) ,
 `Nombre_producto` varchar(45) ,
 `Categoria_producto` varchar(100) ,
 `Referencia_producto` varchar(45) ,
 `fidelizacion_id` int(11) ,
 `Fecha_pago` date ,
 `Hora_pago` time ,
 `Soporte_url` varchar(255) ,
 `Total_pago` decimal(10,2) 
)*/;

/*Table structure for table `v_usuarios` */

DROP TABLE IF EXISTS `v_usuarios`;

/*!50001 DROP VIEW IF EXISTS `v_usuarios` */;
/*!50001 DROP TABLE IF EXISTS `v_usuarios` */;

/*!50001 CREATE TABLE  `v_usuarios`(
 `ID_USUARIO` int(11) ,
 `Nombres` varchar(100) ,
 `Apellidos` varchar(100) ,
 `Documento` int(50) ,
 `Correo_usuario` varchar(100) ,
 `Estado_pedido` enum('''Pendiente''','''En proceso''','''Entregado''','''Cancelado''') ,
 `Fecha_de_compra` date ,
 `Fecha_de_entrega` date ,
 `Total_de_pago` int(100) ,
 `Nombre_producto` varchar(45) ,
 `created_at` datetime ,
 `pedido_id` int(11) 
)*/;

/*View structure for view v.roles */

/*!50001 DROP TABLE IF EXISTS `v.roles` */;
/*!50001 DROP VIEW IF EXISTS `v.roles` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v.roles` AS (select `usuarios`.`Documento` AS `Documento`,`usuarios`.`Nombres` AS `Nombres`,`usuarios`.`Apellidos` AS `Apellidos`,`usuarios`.`Correo_usuario` AS `Correo_usuario`,`permisos`.`Nombre_permisos` AS `Nombre_permisos`,`permisos`.`Descripcion_permisos` AS `Descripcion_permisos`,`roles`.`Cargo` AS `Cargo` from (((`permisos` join `permisos_has_roles` on(`permisos`.`ID_PERMISOS` = `permisos_has_roles`.`permisos_id`)) join `roles` on(`permisos_has_roles`.`roles_id` = `roles`.`ID_ROL`)) join `usuarios` on(`usuarios`.`roles_id` = `roles`.`ID_ROL`))) */;

/*View structure for view v.ventas */

/*!50001 DROP TABLE IF EXISTS `v.ventas` */;
/*!50001 DROP VIEW IF EXISTS `v.ventas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v.ventas` AS (select `usuarios`.`Documento` AS `Documento`,`usuarios`.`Nombres` AS `Nombres`,`usuarios`.`Apellidos` AS `Apellidos`,`venta`.`Nombre_producto` AS `Nombre_producto`,`venta`.`Categoria_producto` AS `Categoria_producto`,`producto`.`Referencia_producto` AS `Referencia_producto`,`venta`.`fidelizacion_id` AS `fidelizacion_id`,`soporte_pago`.`Fecha_pago` AS `Fecha_pago`,`soporte_pago`.`Hora_pago` AS `Hora_pago`,`soporte_pago`.`Soporte_url` AS `Soporte_url`,`soporte_pago`.`Total_pago` AS `Total_pago` from (((((`venta` join `venta_has_usuarios` on(`venta`.`ID_VENTA` = `venta_has_usuarios`.`venta_id`)) join `producto_has_venta` on(`producto_has_venta`.`venta_id` = `venta`.`ID_VENTA`)) join `usuarios` on(`usuarios`.`ID_USUARIO` = `venta_has_usuarios`.`usuarios_id`)) join `producto` on(`producto_has_venta`.`producto_id` = `producto`.`ID_PRODUCTO`)) join `soporte_pago` on(`soporte_pago`.`ID_SOPORTE_PAGO` = `venta`.`ID_VENTA`))) */;

/*View structure for view v_usuarios */

/*!50001 DROP TABLE IF EXISTS `v_usuarios` */;
/*!50001 DROP VIEW IF EXISTS `v_usuarios` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_usuarios` AS select `usuarios`.`ID_USUARIO` AS `ID_USUARIO`,`usuarios`.`Nombres` AS `Nombres`,`usuarios`.`Apellidos` AS `Apellidos`,`usuarios`.`Documento` AS `Documento`,`usuarios`.`Correo_usuario` AS `Correo_usuario`,`pedido`.`Estado_pedido` AS `Estado_pedido`,`pedido`.`Fecha_de_compra` AS `Fecha_de_compra`,`pedido`.`Fecha_de_entrega` AS `Fecha_de_entrega`,`pedido`.`Total_de_pago` AS `Total_de_pago`,`venta`.`Nombre_producto` AS `Nombre_producto`,`venta`.`created_at` AS `created_at`,`venta`.`pedido_id` AS `pedido_id` from ((((`usuarios` join `usuarios_has_pedido` on(`usuarios`.`ID_USUARIO` = `usuarios_has_pedido`.`usuarios_id`)) join `pedido` on(`usuarios_has_pedido`.`pedido_id` = `pedido`.`ID_PEDIDO`)) join `venta_has_usuarios` on(`usuarios`.`ID_USUARIO` = `venta_has_usuarios`.`usuarios_id`)) join `venta` on(`venta_has_usuarios`.`venta_id` = `venta`.`ID_VENTA`)) order by `usuarios`.`ID_USUARIO` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
