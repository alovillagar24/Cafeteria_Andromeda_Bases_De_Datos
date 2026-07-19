-- Auditoria de precios

DELIMITER //

CREATE TRIGGER trg_auditoria_precio
AFTER UPDATE ON productos
FOR EACH ROW
BEGIN
    IF OLD.precio_unitario <> NEW.precio_unitario THEN
        INSERT INTO auditoria_operaciones (tabla_afectada, operacion, detalles_json)
        VALUES (
            'productos', 
            'UPDATE', 
            JSON_OBJECT(
                'id_producto', NEW.id_producto, 
                'valor_anterior', OLD.precio_unitario, 
                'valor_nuevo', NEW.precio_unitario
            )
        );
    END IF;
END //

DELIMITER ;

-- protección de registros históricos

DELIMITER //

CREATE TRIGGER trg_prevent_borrado_pagado
BEFORE DELETE ON pedidos
FOR EACH ROW
BEGIN
    IF OLD.estado_pedido = 'Entregado' THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: No es posible eliminar un pedido que ya ha sido entregado.';
    END IF;
END //

DELIMITER ;
