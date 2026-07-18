--clientes
INSERT INTO clientes (nombre_completo, telefono, correo_electronico, fecha_registro) VALUES 
('Ana Lopez', '5511001101', 'ana@email.com', '2026-01-01'), ('Luis Ruiz', '5511001102', 'luis@email.com', '2026-01-02'),
('Maria Diaz', '5511001103', 'maria@email.com', '2026-01-03'), ('Juan Pardo', '5511001104', 'juan@email.com', '2026-01-04'),
('Carla Sol', '5511001105', 'carla@email.com', '2026-01-05'), ('Pedro Gil', '5511001106', 'pedro@email.com', '2026-01-06'),
('Sara Mora', '5511001107', 'sara@email.com', '2026-01-07'), ('Rene Paz', '5511001108', 'rene@email.com', '2026-01-08'),
('Ines Vaca', '5511001109', 'ines@email.com', '2026-01-09'), ('Hugo Rey', '5511001110', 'hugo@email.com', '2026-01-10'),
('Eva Luna', '5511001111', 'eva@email.com', '2026-01-11'), ('Leo Soto', '5511001112', 'leo@email.com', '2026-01-12'),
('Ana Rivas', '5511001113', 'rivas@email.com', '2026-01-13'), ('Pau Cid', '5511001114', 'pau@email.com', '2026-01-14'),
('Eli Vera', '5511001115', 'eli@email.com', '2026-01-15'), ('Gus Vega', '5511001116', 'gus@email.com', '2026-01-16'),
('Mia Cruz', '5511001117', 'mia@email.com', '2026-01-17'), ('Noe Lira', '5511001118', 'noe@email.com', '2026-01-18'),
('Ada Rio', '5511001119', 'ada@email.com', '2026-01-19'), ('Zoe Mas', '5511001120', 'zoe@email.com', '2026-01-20');

--pedidos
INSERT INTO pedidos (fecha_hora, estado_pedido, metodo_pago, id_cliente) VALUES 
('2026-06-01 10:00:00', 'Entregado', 'Efectivo', 1), ('2026-06-01 10:30:00', 'Entregado', 'Tarjeta', 2),
('2026-06-01 11:00:00', 'Entregado', 'Efectivo', 3), ('2026-06-01 11:30:00', 'Entregado', 'Tarjeta', 4),
('2026-06-02 10:00:00', 'Entregado', 'Efectivo', 5), ('2026-06-02 10:30:00', 'Entregado', 'Tarjeta', 6),
('2026-06-02 11:00:00', 'Entregado', 'Efectivo', 7), ('2026-06-02 11:30:00', 'Entregado', 'Tarjeta', 8),
('2026-06-03 10:00:00', 'Entregado', 'Efectivo', 9), ('2026-06-03 10:30:00', 'Entregado', 'Tarjeta', 10),
('2026-06-03 11:00:00', 'Entregado', 'Efectivo', 11), ('2026-06-03 11:30:00', 'Entregado', 'Tarjeta', 12),
('2026-06-04 10:00:00', 'Entregado', 'Efectivo', 13), ('2026-06-04 10:30:00', 'Entregado', 'Tarjeta', 14),
('2026-06-04 11:00:00', 'Entregado', 'Efectivo', 15), ('2026-06-04 11:30:00', 'Entregado', 'Tarjeta', 16),
('2026-06-05 10:00:00', 'Entregado', 'Efectivo', 17), ('2026-06-05 10:30:00', 'Entregado', 'Tarjeta', 18),
('2026-06-05 11:00:00', 'Entregado', 'Efectivo', 19), ('2026-06-05 11:30:00', 'Entregado', 'Tarjeta', 20);

--promociones
INSERT INTO promociones (nombre_promoción, descuento_aplicado, fecha_inicio, fecha_fin) VALUES 
('Promo1', 10.00, '2026-01-01', '2026-01-31'), ('Promo2', 10.00, '2026-02-01', '2026-02-28'),
('Promo3', 15.00, '2026-03-01', '2026-03-31'), ('Promo4', 15.00, '2026-04-01', '2026-04-30'),
('Promo5', 20.00, '2026-05-01', '2026-05-31'), ('Promo6', 20.00, '2026-06-01', '2026-06-30'),
('Promo7', 5.00, '2026-07-01', '2026-07-31'), ('Promo8', 5.00, '2026-08-01', '2026-08-31'),
('Promo9', 10.00, '2026-09-01', '2026-09-30'), ('Promo10', 10.00, '2026-10-01', '2026-10-31'),
('Promo11', 15.00, '2026-11-01', '2026-11-30'), ('Promo12', 25.00, '2026-12-01', '2026-12-31'),
('Promo13', 10.00, '2026-01-01', '2026-01-31'), ('Promo14', 10.00, '2026-02-01', '2026-02-28'),
('Promo15', 15.00, '2026-03-01', '2026-03-31'), ('Promo16', 15.00, '2026-04-01', '2026-04-30'),
('Promo17', 20.00, '2026-05-01', '2026-05-31'), ('Promo18', 20.00, '2026-06-01', '2026-06-30'),
('Promo19', 5.00, '2026-07-01', '2026-07-31'), ('Promo20', 5.00, '2026-08-01', '2026-08-31');

--detalles_pedido
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, precio_cobrado) VALUES 
(1,1,1,25), (2,2,1,20), (3,3,1,40), (4,4,1,10), (5,5,1,30), (6,6,1,15), (7,7,1,35), (8,8,1,25),
(9,9,1,20), (10,10,1,20), (11,11,1,45), (12,12,1,15), (13,13,1,60), (14,14,1,45), (15,15,1,25),
(16,16,1,35), (17,17,1,30), (18,18,1,35), (19,19,1,50), (20,20,1,10);

--producto_promocion
INSERT INTO productos_promociones (id_producto, id_promocion) VALUES 
(1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7), (8,8), (9,9), (10,10), 
(11,11), (12,12), (13,13), (14,14), (15,15), (16,16), (17,17), (18,18), (19,19), (20,20);

