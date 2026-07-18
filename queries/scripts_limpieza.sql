-- Prueba cascada elimina registros en detalles_pedidos si se borra el id desde pedidos
DELETE FROM pedidos WHERE id_pedido = 1;
SELECT * FROM detalles_pedidos WHERE id_pedido = 1;

-- Operación DELETE (Baja de registro)
DELETE FROM productos 
WHERE nombre = 'Frappé de Oreo';

-- Operación DELETE (Mantenimiento selectivo)
DELETE FROM pedidos 
WHERE fecha_hora < '2026-06-02' AND estado_pedido = 'Entregado';

-- Operación TRUNCATE (Reinicio del catálogo)
TRUNCATE TABLE promociones;

