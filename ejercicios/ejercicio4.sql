CREATE TABLE productos (
id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(20) NOT NULL,
costo FLOAT NOT NULL DEFAULT 0.0,
precio FLOAT NOT NULL DEFAULT 0.0,

PRIMARY KEY(id) );
INSERT INTO productos (nombre, costo, precio)
VALUES ('Producto A', 4, 8),
('Producto B', 2, 4),
('Producto C', 40, 80);

Actualizar automáticamente el precio de los productos de la tabla creada en el apartado anterior cada vez que se actualice su
costo. Le llamaremos actualizarPrecioProducto.
El trigger comprobará si el costo del producto ha cambiado y, en caso afirmativo, establecerá el precio del producto con el doble
del valor de su costo. Para crear el trigger, ejecuta las siguientes sentencias SQL:
DELIMITER $$
CREATE TRIGGER ActualizarPrecioProducto
BEFORE UPDATE ON Productos
FOR EACH ROW
BEGIN
IF NEW.costo <> OLD.costo

THEN
SET NEW.precio = NEW.costo * 2;
END IF ;
END $$
DELIMITER ;

Podemos comprobar el resultado del trigger actualizando un registro con una sentencia UPDATE como esta:
UPDATE productos SET costo = 5 WHERE id = 1;
SELECT * FROM productos;