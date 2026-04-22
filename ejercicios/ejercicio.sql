create database agenda;
use agenda;
create table contactos (
    id_contacto int auto_increment primary key,
    nombre varchar(45) not null,
    telefono varchar(12),
    email varchar(50));

Insert into contactos values ..............
Select * from contactos;
Update contactos set nombre = 'ALEJANDRA', telefono='0000-0000' where id_contacto = 1;
Delete from contactos where nombre = 'Segundo Nombre';
Select last_insert_id(); 
-- Insertar
DELIMITER //
CREATE PROCEDURE AgendaInsertar (in nombre varchar(45), telefono varchar(12), email varchar(50))
BEGIN
	DECLARE nombre varchar(45);
	INSERT INTO contactos VALUES (nombre, telefono, email);
END //

CALL AgendaInsertar

--CORRECCIÓN

    DELIMITER //

    CREATE PROCEDURE AgendaInsertar(
        IN p_nombre VARCHAR(45),
        IN p_telefono VARCHAR(12),
        IN p_email VARCHAR(50)
    )
    BEGIN
        INSERT INTO contactos(nombre, telefono, email)
        VALUES (p_nombre, p_telefono, p_email);
    END //
CALL AgendaInsertar

 CALL AgendaInsertar("ALE", "000-555", "ALE@EMAIL,COM") ;
 CALL AgendaInsertar("SUM", "111-568", "SUM@EMAIL,COM") ;

 +-------------+--------+----------+---------------+
| id_contacto | nombre | telefono | email         |
+-------------+--------+----------+---------------+
|           2 | ALE    | 000-555  | ALE@EMAIL,COM |
|           3 | SUM    | 111-568  | SUM@EMAIL,COM |
+-------------+--------+----------+---------------+
2 rows in set (0.000 sec)

-- Borrar
DELIMITER $$
DROP PROCEDURE IF EXIST AgendaBorrar $$
CREATE PROCEDURE AgendaBorrar(in ident int)
BEGIN
   DELETE FROM contactos where id_contacto = ident;
END $$
DELIMITER ;

--CORRECCIÓN
DELIMITER // 
CREATE PROCEDURE AgendaBorrar(borra INT)
BEGIN 
    DELETE FROM contactos WHERE id_contacto = borra;
END // 

CALL AgendaBorrar(2);
+-------------+--------+----------+---------------+
| id_contacto | nombre | telefono | email         |
+-------------+--------+----------+---------------+
|           3 | SUM    | 111-568  | SUM@EMAIL,COM |
+-------------+--------+----------+---------------+
1 row in set (0.001 sec)

-- Actualizar
DELIMITER $$
DROP PROCEDURE IF EXIST AgendaActualizar $$
CREATE PROCEDURE AgendaActualizar (in ident int,ntelefono varchar(12))
BEGIN
UPDATE contactos SET telefono=ntelefono WHERE id_contacto=ident;
END $$
DELIMITER ;
 
CALL AgendaActualizar(3, "555-666");
+-------------+--------+----------+---------------+
| id_contacto | nombre | telefono | email         |
+-------------+--------+----------+---------------+
|           3 | SUM    | 555-666  | SUM@EMAIL,COM |
+-------------+--------+----------+---------------+
1 row in set (0.001 sec)

-- Para llamar o ejecutar
CALL AgendaInsertar(0,'Fernando Carraro Aguirre','7221312686','carraro.fernando@gmail.com');
select * from contactos;

+-------------+--------------------------+------------+----------------------------+
| id_contacto | nombre                   | telefono   | email                      |
+-------------+--------------------------+------------+----------------------------+
|           3 | SUM                      | 555-666    | SUM@EMAIL,COM              |
|           4 | Fernando Carraro Aguirre | 7221312686 | carraro.fernando@gmail.com |
+-------------+--------------------------+------------+----------------------------+
2 rows in set (0.001 sec)

CALL AgendaBorrar(3);
select * from contactos;

+-------------+--------------------------+------------+----------------------------+
| id_contacto | nombre                   | telefono   | email                      |
+-------------+--------------------------+------------+----------------------------+
|           4 | Fernando Carraro Aguirre | 7221312686 | carraro.fernando@gmail.com |
+-------------+--------------------------+------------+----------------------------+
1 row in set (0.000 sec)


CALL AgendaActualizar(4,'7221312453');
select * from contactos;

+-------------+--------------------------+------------+----------------------------+
| id_contacto | nombre                   | telefono   | email                      |
+-------------+--------------------------+------------+----------------------------+
|           4 | Fernando Carraro Aguirre | 7221312453 | carraro.fernando@gmail.com |
+-------------+--------------------------+------------+----------------------------+
1 row in set (0.001 sec)

-- Crear el siguiente procedimiento y corregir los posibles errores
-- DROP PROCEDURE IF EXIST AgendaTipoUsuarios //
DELIMITER //

CREATE PROCEDURE AgendaTipoUsuarios (IN no_cta INT)
BEGIN
    DECLARE tipoUsuario VARCHAR(15);

    IF no_cta = 17 THEN
        SET tipoUsuario = 'Admin';
    ELSE
        SET tipoUsuario = 'Invitado';
    END IF;

    INSERT INTO contactos (tipoUsuario) VALUES (tipoUsuario);
END //

DELIMITER ;
 ALTER TABLE contactos
    -> ADD COLUMN tipoUsuario varchar(15);
Query OK, 0 rows affected (0.009 sec)

 CALL AgendaTipoUsuarios(6);
 +-------------+--------------------------+------------+----------------------------+-------------+
| id_contacto | nombre                   | telefono   | email                      | tipoUsuario |
+-------------+--------------------------+------------+----------------------------+-------------+
|           4 | Fernando Carraro Aguirre | 7221312453 | carraro.fernando@gmail.com | NULL        |
|           5 |                          | NULL       | NULL                       | Invitado    |
+-------------+--------------------------+------------+----------------------------+-------------+
2 rows in set (0.000 sec)

SELECT * FROM contactos;
+-------------+--------------------------+------------+----------------------------+-------------+
| id_contacto | nombre                   | telefono   | email                      | tipoUsuario |
+-------------+--------------------------+------------+----------------------------+-------------+
|           4 | Fernando Carraro Aguirre | 7221312453 | carraro.fernando@gmail.com | NULL        |
|           5 |                          | NULL       | NULL                       | Invitado    |
|           6 |                          | NULL       | NULL                       | Admin       |
+-------------+--------------------------+------------+----------------------------+-------------+
3 rows in set (0.000 sec)