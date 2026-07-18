-- Consulta relacional
SELECT p.id_pedido, c.nombre_completo, pr.nombre AS producto, dp.cantidad
FROM pedidos p
LEFT JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN detalles_pedidos dp ON p.id_pedido = dp.id_pedido
JOIN productos pr ON dp.id_producto = pr.id_producto;

-- Validación de tipos de datos (no devuelve registros)
SELECT * FROM productos WHERE precio_unitario <= 0;
