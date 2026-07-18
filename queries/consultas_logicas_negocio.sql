-- 1. Búsquedas por fecha específica (operación contable)
-- Permite filtrar pedidos registrados en una jornada administrativa puntual
SELECT id_pedido, fecha_hora, monto_total 
FROM pedidos 
WHERE fecha_operacion = '2026-07-05';

-- 2. Filtros temporales (rango de tiempo con TIME)
-- Útil para identificar horas pico de atención en la cafetería
SELECT id_pedido, hora_atencion, estado_pedido 
FROM pedidos 
WHERE hora_atencion BETWEEN '13:00:00' AND '15:00:00';

-- 3. Ordenamiento cronológico inverso
-- Muestra los movimientos más recientes del historial de auditoría
SELECT tabla_afectada, operacion, fecha_cambio 
FROM auditoria_operaciones 
ORDER BY fecha_cambio DESC 
LIMIT 10;

-- 4. Recuperación de información histórica desde JSON
-- Extrae el momento exacto en que un pedido fue entregado, consultando el historial
SELECT id_pedido, historial_movimientos->>'$.entregado' AS hora_entrega
FROM pedidos
WHERE historial_movimientos->>'$.entregado' IS NOT NULL
ORDER BY hora_entrega ASC;

-- 5. Análisis por año fiscal (uso de YEAR)
-- Permite comparar el desempeño anual de la cafetería
SELECT anio_fiscal, COUNT(id_pedido) AS total_pedidos, SUM(monto_total) AS ingresos
FROM pedidos
GROUP BY anio_fiscal;
