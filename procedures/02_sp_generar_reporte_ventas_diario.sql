DELIMITER //

CREATE PROCEDURE sp_generar_reporte_ventas_diario(
    IN p_fecha DATE
)
BEGIN
    -- 1. Resumen General del Día
    SELECT 
        COUNT(id_pedido) AS total_pedidos_completados,
        IFNULL(SUM(monto_total), 0.00) AS ingresos_totales
    FROM 
        pedidos
    WHERE 
        fecha_operacion = p_fecha 
        AND estado_pedido = 'Entregado';

    -- 2. Desglose por Método de Pago
    SELECT 
        metodo_pago,
        COUNT(id_pedido) AS cantidad_operaciones,
        IFNULL(SUM(monto_total), 0.00) AS subtotal_ingresos
    FROM 
        pedidos
    WHERE 
        fecha_operacion = p_fecha 
        AND estado_pedido = 'Entregado'
    GROUP BY 
        metodo_pago
    ORDER BY 
        subtotal_ingresos DESC;
END //

DELIMITER ;
