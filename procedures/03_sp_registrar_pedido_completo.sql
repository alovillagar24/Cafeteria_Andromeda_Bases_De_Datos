DELIMITER //

CREATE PROCEDURE sp_registrar_pedido_completo(
    IN p_id_cliente INT, 
    IN p_metodo_pago VARCHAR(30), 
    IN p_monto_total DECIMAL(10,2)
)
BEGIN
    INSERT INTO pedidos (
        id_cliente, 
        fecha_hora, 
        hora_atencion, 
        fecha_operacion, 
        estado_pedido, 
        metodo_pago, 
        monto_total
    )
    VALUES (
        p_id_cliente, 
        NOW(), 
        CURTIME(), 
        CURDATE(), 
        'Entregado', 
        p_metodo_pago, 
        p_monto_total
    );
END //

DELIMITER ;
