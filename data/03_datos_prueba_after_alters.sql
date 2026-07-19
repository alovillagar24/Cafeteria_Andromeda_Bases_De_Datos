-- Ejemplo de uso del campo JSON (especificaciones_json)
INSERT INTO productos (nombre, precio_unitario, especificaciones_json) 
VALUES ('Café Americano', 25.00, '{"origen": "Chiapas", "tueste": "medio", "alergias": "ninguna"}');

-- Inserción de productos con configuraciones y observaciones
INSERT INTO productos (nombre, descripcion, precio_unitario, anio_lanzamiento, configuraciones_especiales, observaciones) 
VALUES 
('Frappé Moka', 'Bebida de café con chocolate', 55.00, 2026, 
 '{"tipo_leche": "almendra", "temperatura": "frio", "edulcorante": "stevia"}', 
 'Producto estrella, alta demanda en verano.'),
('Torta del Día', 'Pan artesanal con ingredientes frescos', 70.00, 2026, 
 '{"calentado": true, "extra_aderezo": false}', 
 'Verificar disponibilidad de insumos frescos al abrir.');
 
-- Inserción de pedidos con trazabilidad temporal
INSERT INTO pedidos (fecha_hora, hora_atencion, fecha_operacion, estado_pedido, metodo_pago, monto_total, id_cliente, historial_movimientos) 
VALUES 
('2026-07-05 14:00:00', '14:05:00', '2026-07-05', 'Entregado', 'Tarjeta', 125.00, 1, 
 '{"creado": "2026-07-05 14:00:00", "preparado": "2026-07-05 14:05:00", "entregado": "2026-07-05 14:10:00"}');
 
-- Registro de auditoría (historial de movimientos)
INSERT INTO auditoria_operaciones (tabla_afectada, operacion, detalles_json) 
VALUES 
('productos', 'UPDATE', 
 '{"id_producto": 1, "campo_modificado": "precio_unitario", "valor_anterior": 50.00, "valor_nuevo": 55.00, "motivo": "ajuste inflacionario"}');
