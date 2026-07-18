-- Consultas básicas

-- Filtrar productos por categoría
SELECT nombre, precio_unitario 
FROM productos 
WHERE categoria = 'Bebidas' AND precio_unitario > 20;

-- Ordenar clientes por fecha de registro
SELECT nombre_completo, fecha_registro 
FROM clientes 
ORDER BY fecha_registro DESC;

-- Obtener los 5 pedidos más antiguos
SELECT id_pedido, fecha_hora, estado_pedido 
FROM pedidos 
ORDER BY fecha_hora ASC 
LIMIT 5;

-- Consulta de productos por rango de precio
SELECT nombre, precio_unitario 
FROM productos 
WHERE precio_unitario BETWEEN 15.00 AND 30.00;

-- Consulta de clientes con datos de contacto incompletos
SELECT nombre_completo, fecha_registro 
FROM clientes 
WHERE telefono IS NULL;


-- Consultas intermedias

-- Detalle completo de ventas
SELECT p.id_pedido, c.nombre_completo, p.monto_total, p.fecha_hora
FROM pedidos p
INNER JOIN clientes c ON p.id_cliente = c.id_cliente;

-- Productos sin ventas
SELECT pr.nombre, dp.id_pedido
FROM productos pr
LEFT JOIN detalles_pedidos dp ON pr.id_producto = dp.id_producto
WHERE dp.id_pedido IS NULL;

-- Listado combinado de promociones y productos
SELECT nombre AS item, 'Producto' AS tipo FROM productos
UNION
SELECT nombre_promoción AS item, 'Promoción' AS tipo FROM promociones;


-- Consultas de análisis, agregación y grupos

-- Ingresos por método de pago
SELECT metodo_pago, SUM(monto_total) AS total_ingresado
FROM pedidos
GROUP BY metodo_pago;

-- Popularidad de categorías
SELECT categoria, COUNT(*) AS cantidad_productos
FROM productos
GROUP BY categoria
ORDER BY cantidad_productos DESC;

