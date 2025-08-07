/* Multitabla de permisos / roles / usuarios */
SELECT usuarios.`Documento`, usuarios.`Nombres`, usuarios.`Apellidos`, usuarios.`Correo_usuario`, permisos.`Nombre_permisos`, permisos.`Descripcion_permisos`, roles.`Cargo` FROM permisos
INNER JOIN permisos_has_roles ON permisos.`ID_PERMISOS`=permisos_has_roles.`permisos_id`
INNER JOIN roles ON permisos_has_roles.`roles_id`=roles.`ID_ROL`
INNER JOIN usuarios ON usuarios.`roles_id` =roles.`ID_ROL`
WHERE roles.`Cargo`='Cliente';

/* Multitabla de ventas / producto / usuarios */

SELECT usuarios.`Documento`, usuarios.`Nombres`, usuarios.`Apellidos`, venta.`Nombre_producto`, venta.`Categoria_producto`, producto.`Referencia_producto`, venta.`fidelizacion_id`, soporte_pago.`Fecha_pago`, soporte_pago.`Hora_pago`, soporte_pago.`Soporte_url`, soporte_pago.`Total_pago` FROM venta
INNER JOIN venta_has_usuarios ON venta.`ID_VENTA`=venta_has_usuarios.`venta_id` -- conexion entre ventas_has_usuarios y ventas
INNER JOIN producto_has_venta ON producto_has_venta.`venta_id`=venta.`ID_VENTA` -- conexion entre producto_has_venta y ventas
INNER JOIN usuarios ON usuarios.`ID_USUARIO`=venta_has_usuarios.`usuarios_id` -- conexion entre usuarios y ventas_has_usuarios
INNER JOIN producto ON producto_has_venta.`producto_id`=producto.`ID_PRODUCTO` -- conexion entre producto y producto_has_ventas
INNER JOIN soporte_pago ON soporte_pago.`ID_SOPORTE_PAGO`=VENTA.`ID_VENTA` -- conexion entre soporte de pago y venta

/* Multitabla de usuarios, pedido, venta*/

SELECT usuarios.`ID_USUARIO`, usuarios.`Nombres`, usuarios.`Apellidos`, usuarios.`Documento`, usuarios.`Correo_usuario`, pedido.`Estado_pedido`, pedido.`Fecha_de_compra`, pedido.`Fecha_de_entrega`, pedido.`Total_de_pago`, venta.`Nombre_producto`, venta.`created_at`, venta.`pedido_id` FROM usuarios
INNER JOIN usuarios_has_pedido ON usuarios.`ID_USUARIO`=usuarios_has_pedido.`usuarios_id` -- conexion entre usuarios y ventas_has_usuarios
INNER JOIN pedido ON usuarios_has_pedido.`pedido_id` = pedido.`ID_PEDIDO` -- unión con pedido
INNER JOIN venta_has_usuarios ON usuarios.`ID_USUARIO` = venta_has_usuarios.`usuarios_id` -- unión con ventas_has_usuarios
INNER JOIN venta ON venta_has_usuarios.`venta_id` = venta.`ID_VENTA` -- unión con venta
ORDER BY usuarios.`ID_USUARIO` ASC;