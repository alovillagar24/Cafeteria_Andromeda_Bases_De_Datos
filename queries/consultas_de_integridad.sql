-- Consulta relacional
SELECT p.id_pedido, c.nombre_completo, pr.nombre AS producto, dp.cantidad
FROM pedidos p
LEFT JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN detalles_pedidos dp ON p.id_pedido = dp.id_pedido
JOIN productos pr ON dp.id_producto = pr.id_producto;

-- Validación de tipos de datos (no devuelve registros)
SELECT * FROM productos WHERE precio_unitario <= 0;


-- Trigger de auditoria trg_auditoria_precio
SELECT * FROM productos WHERE id_producto = 1; -- 01. Identifica un producto existente.
UPDATE productos SET precio_unitario = 95.00 WHERE id_producto = 1; -- 02. Cambia su precio.
SELECT * FROM auditoria_operaciones; -- 03. Verifica que el trigger creó el registro en la tabla de auditoría.

-- Trigger de protección trg_prevent_borrado_pagado
INSERT INTO pedidos (id_cliente, fecha_hora, hora_atencion, fecha_operacion, estado_pedido, metodo_pago, monto_total)
VALUES (1, NOW(), CURTIME(), CURDATE(), 'Entregado', 'Efectivo', 100.00); -- 01. prueba de pedido con estado 'Entregado'.
DELETE FROM pedidos WHERE id_pedido = [ID_QUE_ACABAS_DE_CREAR]; -- 02. Intenta borrarlo
-- Resultado: El sistema rechazará la operación y te devolverá el mensaje de error que definimos: 'Error: No es posible eliminar un pedido que ya ha sido entregado.'

-- Visualización de los triggers
SHOW TRIGGERS FROM cafeteria_universitaria;
