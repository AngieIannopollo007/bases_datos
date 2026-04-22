-- 1-  Crear un procedimiento que declara una variable y muestra por pantalla su valor 
DELIMITER //
 CREATE PROCEDURE dec_var()
 BEGIN 
    DECLARE var1 int;
        SET var1 = 2;   
    SELECT var1 AS Resultado;
 END; 
 // 
 
CALL dec_var() //
+-----------+
| Resultado |
+-----------+
|         2 |
+-----------+
1 row in set (0.000 sec)

-- 2- Crear una función que dándole dos números devuelve la suma

DELIMITER //
CREATE FUNCTION funcion_bro(
    a INT,
    b INT
)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE resul INT;
    SET resul = a + b;
    RETURN resul;
END;

 SELECT funcion_bro(2, 6) //
+-------------------+
| funcion_bro(2, 6) |
+-------------------+
|                 8 |
+-------------------+
1 row in set (0.001 sec)

-- 3- Crear un procedimiento que muestre el nombre de un cliente a partir de su código de cliente.

DELIMITER  //
CREATE PROCEDURE nom_cli(IN cod_cli INT)
BEGIN
    SELECT nombre_cliente FROM cliente WHERE codigo_cliente = cod_cli;
END;
//
 CALL nom_cli(5) //
+----------------+
| nombre_cliente |
+----------------+
| Tendo Garden   |
+----------------+
1 row in set (0.003 sec)
-- 4-  Crear una función que devuelva la cantidad total de clientes que tenemos
DELIMITER //
CREATE FUNCTION total()
RETURNS INT
DETERMINISTIC
BEGIN 
    DECLARE result INT;
    SELECT COUNT(*) INTO result FROM cliente;
    RETURN result;
END;
//

 SELECT total() //
+---------+
| total() |
+---------+
|      36 |
+---------+
1 row in set (0.000 sec)

-- 5-  Crear una función que devuelva el número de clientes que sea de un País. Este País será pasado como parámetro
DELIMITER // 
CREATE FUNCTION pais_clientes(pais1 VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN   
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM cliente WHERE pais = pais1;
    RETURN total;
END;
//

 SELECT pais_clientes('USA') //
+----------------------+
| pais_clientes('USA') |
+----------------------+
|                    4 |
+----------------------+
1 row in set (0.004 sec)