-- Modificaciones estructurales

-- Ejemplo: Asegurar que el correo sea único para evitar registros duplicados
ALTER TABLE clientes ADD CONSTRAINT uc_correo UNIQUE (correo_electronico);

-- Ejemplo: Cambiar el nombre de una columna si fuera necesario
ALTER TABLE promociones CHANGE descuento_porcentaje descuento_aplicado DECIMAL(5,2);

--Modificaciones estructurales controladas (ALTER)
ALTER TABLE productos ADD COLUMN precio_anterior DECIMAL(10,2) DEFAULT 0.00;

-- Clientes: Se añade TIMESTAMP para auditoría de registros
ALTER TABLE clientes 
ADD COLUMN ultima_modificacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- Productos: Se integra JSON para atributos dinámicos y se ajusta la descripción a TEXT
ALTER TABLE productos 
ADD COLUMN especificaciones_json JSON,
ADD COLUMN anio_lanzamiento YEAR; -- Tipo YEAR para seguimiento del catálogo

-- Pedidos: Se implementan tipos temporales avanzados
ALTER TABLE pedidos 
ADD COLUMN hora_atencion TIME, -- Registro específico de la hora del servicio
ADD COLUMN anio_fiscal YEAR AS (YEAR(fecha_hora)); -- Columna calculada

-- Promociones: Se ajusta el tipo de descripción a TEXT
ALTER TABLE promociones 
MODIFY COLUMN descripcion TEXT;
