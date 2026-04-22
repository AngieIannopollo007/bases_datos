--1 Devuelve un listado con el código de oficina y la ciudad donde hay oficin
 SELECT codigo_oficina, ciudad FROM oficina;
+----------------+----------------------+
| codigo_oficina | ciudad               |
+----------------+----------------------+
| BCN-ES         | Barcelona            |
| BCT-ES         | Barcelona            |
| BOS-USA        | Boston               |
| LON-UK         | Londres              |
| MAD-ES         | Madrid               |
| PAR-FR         | Paris                |
| SFC-USA        | San Francisco        |
| SYD-AU         | Sydney               |
| TAL-ES         | Talavera de la Reina |
| TOK-JP         | Tokyo                |
+----------------+----------------------+
10 rows in set (0.016 sec)

--2 Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
SELECT ciudad, telefono FROM oficina WHERE pais = 'España';
Empty set (0.000 sec)

--3 Devuelve un listado con el email, nombre, apellidos completos (Por ej. Fernandez Alonso, Mario Alfredo)  
-- de los empleados cuyo jefe tiene un código de jefe igual a 7.
SELECT nombre, apellido1, apellido2 FROM empleado WHERE codigo_jefe = 7;
+---------+-----------+-----------+
| nombre  | apellido1 | apellido2 |
+---------+-----------+-----------+
| Mariano | L?pez     | Murcia    |
| Lucio   | Campoamor | Mart?n    |
| Hilario | Rodriguez | Huertas   |
+---------+-----------+-----------+
3 rows in set (0.006 sec)

--4 Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.
SELECT puesto, nombre, apellido1, apellido2, email 
FROM empleado 	
WHERE codigo_jefe IS NOT NULL;
+-----------------------+-----------------+------------+-----------+---------------------------+
| puesto                | nombre          | apellido1  | apellido2 | email                     |
+-----------------------+-----------------+------------+-----------+---------------------------+
| Subdirector Marketing | Ruben           | L?pez      | Martinez  | rlopez@jardineria.es      |
| Subdirector Ventas    | Alberto         | Soria      | Carrasco  | asoria@jardineria.es      |
| Secretaria            | Maria           | Sol?s      | Jerez     | msolis@jardineria.es      |
| Representante Ventas  | Felipe          | Rosas      | Marquez   | frosas@jardineria.es      |
| Representante Ventas  | Juan Carlos     | Ortiz      | Serrano   | cortiz@jardineria.es      |
| Director Oficina      | Carlos          | Soria      | Jimenez   | csoria@jardineria.es      |
| Representante Ventas  | Mariano         | L?pez      | Murcia    | mlopez@jardineria.es      |
| Representante Ventas  | Lucio           | Campoamor  | Mart?n    | lcampoamor@jardineria.es  |
| Representante Ventas  | Hilario         | Rodriguez  | Huertas   | hrodriguez@jardineria.es  |
| Director Oficina      | Emmanuel        | Maga?a     | Perez     | manu@jardineria.es        |
| Representante Ventas  | Jos? Manuel     | Martinez   | De la Osa | jmmart@hotmail.es         |
| Representante Ventas  | David           | Palma      | Aceituno  | dpalma@jardineria.es      |
| Representante Ventas  | Oscar           | Palma      | Aceituno  | opalma@jardineria.es      |
| Director Oficina      | Francois        | Fignon     |           | ffignon@gardening.com     |
| Representante Ventas  | Lionel          | Narvaez    |           | lnarvaez@gardening.com    |
| Representante Ventas  | Laurent         | Serra      |           | lserra@gardening.com      |
| Director Oficina      | Michael         | Bolton     |           | mbolton@gardening.com     |
| Representante Ventas  | Walter Santiago | Sanchez    | Lopez     | wssanchez@gardening.com   |
| Director Oficina      | Hilary          | Washington |           | hwashington@gardening.com |
| Representante Ventas  | Marcus          | Paxton     |           | mpaxton@gardening.com     |
| Representante Ventas  | Lorena          | Paxton     |           | lpaxton@gardening.com     |
| Director Oficina      | Nei             | Nishikori  |           | nnishikori@gardening.com  |
| Representante Ventas  | Narumi          | Riko       |           | nriko@gardening.com       |
| Representante Ventas  | Takuma          | Nomura     |           | tnomura@gardening.com     |
| Director Oficina      | Amy             | Johnson    |           | ajohnson@gardening.com    |
| Representante Ventas  | Larry           | Westfalls  |           | lwestfalls@gardening.com  |
| Representante Ventas  | John            | Walton     |           | jwalton@gardening.com     |
| Director Oficina      | Kevin           | Fallmer    |           | kfalmer@gardening.com     |
| Representante Ventas  | Julian          | Bellinelli |           | jbellinelli@gardening.com |
| Representante Ventas  | Mariko          | Kishi      |           | mkishi@gardening.com      |
+-----------------------+-----------------+------------+-----------+---------------------------+
30 rows in set (0.000 sec)

--5 Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean representantes de ventas.
SELECT nombre, apellido1, apellido2, puesto 
FROM empleado 
WHERE puesto != 'Representante Ventas';
+----------+------------+-----------+-----------------------+
| nombre   | apellido1  | apellido2 | puesto                |
+----------+------------+-----------+-----------------------+
| Marcos   | Maga?a     | Perez     | Director General      |
| Ruben    | L?pez      | Martinez  | Subdirector Marketing |
| Alberto  | Soria      | Carrasco  | Subdirector Ventas    |
| Maria    | Sol?s      | Jerez     | Secretaria            |
| Carlos   | Soria      | Jimenez   | Director Oficina      |
| Emmanuel | Maga?a     | Perez     | Director Oficina      |
| Francois | Fignon     |           | Director Oficina      |
| Michael  | Bolton     |           | Director Oficina      |
| Hilary   | Washington |           | Director Oficina      |
| Nei      | Nishikori  |           | Director Oficina      |
| Amy      | Johnson    |           | Director Oficina      |
| Kevin    | Fallmer    |           | Director Oficina      |
+----------+------------+-----------+-----------------------+
12 rows in set (0.000 sec)

--6 Devuelve un listado con el nombre de todos los clientes españoles.
SELECT nombre_cliente, apellido_contacto FROM cliente WHERE pais = 'Spain';
+--------------------------------+-------------------+
| nombre_cliente                 | apellido_contacto |
+--------------------------------+-------------------+
| Lasas S.A.                     | Lasas             |
| Beragua                        | Bermejo           |
| Club Golf Puerta del hierro    | Lopez             |
| Naturagua                      | Rengifo           |
| DaraDistribuciones             | Serrano           |
| Madrile?a de riegos            | Taca?o            |
| Lasas S.A.                     | Lasas             |
| Camunas Jardines S.L.          | Camunas           |
| Dardena S.A.                   | Rodriguez         |
| Jardin de Flores               | Villar            |
| Flores Marivi                  | Rodriguez         |
| Flowers, S.A                   | Fernandez         |
| Naturajardin                   | Cruz              |
| Golf S.A.                      | Martinez          |
| Americh Golf Management SL     | Suarez            |
| Aloha                          | Rodrigez          |
| El Prat                        | Camacho           |
| Sotogrande                     | Santillana        |
| Vivero Humanes                 | Gomez             |
| Fuenla City                    | Mu?oz Mena        |
| Jardines y Mansiones Cactus SL | S?nchez           |
| Jardiner?as Mat?as SL          | San Mart?n        |
| Agrojardin                     | Lopez             |
| Top Campo                      | Sanchez           |
| Jardineria Sara                | Marquez           |
| Campohermoso                   | Jimenez           |
| Flores S.L.                    | Romero            |
+--------------------------------+-------------------+
27 rows in set (0.004 sec)

--7 Devuelve un listado con los distintos estados por los que puede pasar un pedido.
SELECT DISTINCT estado FROM pedido;
+-----------+
| estado    |
+-----------+
| Entregado |
| Rechazado |
| Pendiente |
+-----------+
3 rows in set (0.005 sec)

--8 Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. 
--Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos. Resuelva la consulta:
--Utilizando la función YEAR
--Utilizando DATE_FORMAT
--Sin utilizar ninguna de las funciones anteriores.
SELECT DISTINCT codigo_cliente FROM pago WHERE YEAR(fecha_pago) = 2008;
+----------------+
| codigo_cliente |
+----------------+
|              1 |
|             13 |
|             14 |
|             26 |
+----------------+
4 rows in set (0.004 sec)

SELECT DISTINCT codigo_cliente 
FROM pago 
WHERE DATE_FORMAT(fecha_pago, ‘%Y %M %D’);
+----------------+
| codigo_cliente |
+----------------+
|              1 |
|              3 |
|              4 |
|              5 |
|              7 |
|              9 |
|             13 |
|             14 |
|             15 |
|             16 |
|             19 |
|             23 |
|             26 |
|             27 |
|             28 |
|             30 |
|             35 |
|             38 |
+----------------+
18 rows in set, 26 warnings (0.000 sec)

--9 Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos
--que no han sido entregados a tiempo.
SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega
FROM pedido 
WHERE (fecha_entrega < fecha_esperada) OR (fecha_entrega IS NULL AND curdate() > fecha_esperada); 
+---------------+----------------+----------------+---------------+
| codigo_pedido | codigo_cliente | fecha_esperada | fecha_entrega |
+---------------+----------------+----------------+---------------+
|             2 |              5 | 2007-10-28     | 2007-10-26    |
|             3 |              5 | 2008-06-25     | NULL          |
|             4 |              5 | 2009-01-26     | NULL          |
|            10 |              3 | 2009-01-20     | NULL          |
|            11 |              1 | 2009-01-27     | NULL          |
|            12 |              1 | 2009-01-27     | NULL          |
|            14 |              7 | 2009-01-02     | NULL          |
|            15 |              7 | 2009-01-12     | 2009-01-11    |
|            19 |              9 | 2009-02-12     | NULL          |
|            20 |              9 | 2009-02-15     | NULL          |
|            23 |              5 | 2009-01-10     | NULL          |
|            24 |             14 | 2008-07-31     | 2008-07-25    |
|            25 |              1 | 2009-02-08     | NULL          |
|            26 |              3 | 2009-02-12     | NULL          |
|            27 |              3 | 2009-02-13     | NULL          |
|            30 |             13 | 2008-09-03     | 2008-08-31    |
|            33 |              4 | 2007-05-28     | NULL          |
|            35 |              4 | 2009-03-20     | NULL          |
|            36 |             14 | 2008-12-15     | 2008-12-10    |
|            37 |              4 | 2009-11-13     | NULL          |
|            48 |             26 | 2008-03-30     | 2008-03-29    |
|            50 |             26 | 2008-08-09     | NULL          |
|            52 |             26 | 2008-12-21     | NULL          |
|            53 |             13 | 2008-11-15     | 2008-11-09    |
|            54 |             14 | 2009-02-11     | NULL          |
|            56 |             13 | 2009-01-20     | NULL          |
|            57 |             13 | 2009-02-05     | NULL          |
|            58 |              3 | 2009-01-31     | 2009-01-30    |
|            61 |              3 | 2009-01-20     | NULL          |
|            62 |              1 | 2009-01-27     | NULL          |
|            63 |              1 | 2009-01-27     | NULL          |
|            64 |              1 | 2009-01-31     | 2009-01-30    |
|            65 |              1 | 2009-02-08     | NULL          |
|            66 |              3 | 2009-02-12     | NULL          |
|            67 |              3 | 2009-02-13     | NULL          |
|            74 |             15 | 2009-01-22     | NULL          |
|            77 |             15 | 2009-01-08     | NULL          |
|            80 |             28 | 2009-01-26     | NULL          |
|            81 |             28 | 2009-01-24     | NULL          |
|            83 |             28 | 2009-01-28     | NULL          |
|            89 |             35 | 2007-12-13     | 2007-12-10    |
|            90 |             27 | 2008-02-17     | NULL          |
|            91 |             27 | 2009-03-29     | 2009-03-27    |
|            93 |             27 | 2009-05-30     | 2009-05-17    |
|            94 |             27 | 2009-11-01     | NULL          |
|            98 |             35 | 2009-02-13     | NULL          |
|            99 |             16 | 2009-02-27     | NULL          |
|           101 |             16 | 2009-03-27     | NULL          |
|           105 |             30 | 2009-02-20     | NULL          |
|           117 |             38 | 2008-10-01     | NULL          |
|           118 |             16 | 2009-02-27     | NULL          |
|           120 |             16 | 2009-03-27     | NULL          |
|           125 |             30 | 2009-02-20     | NULL          |
+---------------+----------------+----------------+---------------+
53 rows in set (0.003 sec)

--10 Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos
--cuya fecha de entrega ha sido al menos dos días antes de la fecha esperada.
--Utilizando la función ADDDATE
--Utilizando la función DATEDIFF
SELECT codigo_pedido, fecha_esperada, fecha_entrega 
FROM pedido
WHERE fecha_entrega <= ADDDATE(fecha_esperada, INTERVAL -2 DAY); 
+---------------+----------------+---------------+
| codigo_pedido | fecha_esperada | fecha_entrega |
+---------------+----------------+---------------+
|             2 | 2007-10-28     | 2007-10-26    |
|            24 | 2008-07-31     | 2008-07-25    |
|            30 | 2008-09-03     | 2008-08-31    |
|            36 | 2008-12-15     | 2008-12-10    |
|            53 | 2008-11-15     | 2008-11-09    |
|            89 | 2007-12-13     | 2007-12-10    |
|            91 | 2009-03-29     | 2009-03-27    |
|            93 | 2009-05-30     | 2009-05-17    |
+---------------+----------------+---------------+
8 rows in set (0.003 sec)

SELECT codigo_pedido, codigo_cliente, fecha_entrega, fecha_esperada 
FROM pedido
WHERE  DATEDIFF(fecha_entrega, fecha_esperada) <= 2;
+---------------+----------------+---------------+----------------+
| codigo_pedido | codigo_cliente | fecha_entrega | fecha_esperada |
+---------------+----------------+---------------+----------------+
|             1 |              5 | 2006-01-19    | 2006-01-19     |
|             2 |              5 | 2007-10-26    | 2007-10-28     |
|             8 |              1 | 2008-11-14    | 2008-11-14     |
|             9 |              1 | 2008-12-28    | 2008-12-27     |
|            13 |              7 | 2009-01-15    | 2009-01-14     |
|            15 |              7 | 2009-01-11    | 2009-01-12     |
|            17 |              7 | 2009-01-11    | 2009-01-09     |
|            18 |              9 | 2009-01-07    | 2009-01-06     |
|            21 |              9 | 2009-01-09    | 2009-01-09     |
|            22 |              9 | 2009-01-13    | 2009-01-11     |
|            24 |             14 | 2008-07-25    | 2008-07-31     |
|            29 |             14 | 2008-09-01    | 2008-09-01     |
|            30 |             13 | 2008-08-31    | 2008-09-03     |
|            34 |              4 | 2008-06-28    | 2008-06-28     |
|            36 |             14 | 2008-12-10    | 2008-12-15     |
|            38 |             19 | 2009-03-07    | 2009-03-06     |
|            39 |             19 | 2009-03-09    | 2009-03-07     |
|            41 |             19 | 2009-03-13    | 2009-03-13     |
|            43 |             23 | 2009-03-28    | 2009-03-26     |
|            46 |             23 | 2009-03-05    | 2009-03-04     |
|            47 |             23 | 2009-03-17    | 2009-03-17     |
|            48 |             26 | 2008-03-29    | 2008-03-30     |
|            51 |             26 | 2008-10-14    | 2008-10-14     |
|            53 |             13 | 2008-11-09    | 2008-11-15     |
|            55 |             14 | 2009-01-11    | 2009-01-10     |
|            58 |              3 | 2009-01-30    | 2009-01-31     |
|            59 |              1 | 2008-11-14    | 2008-11-14     |
|            60 |              1 | 2008-12-28    | 2008-12-27     |
|            64 |              1 | 2009-01-30    | 2009-01-31     |
|            75 |             15 | 2009-01-13    | 2009-01-13     |
|            76 |             15 | 2008-11-23    | 2008-11-23     |
|            78 |             15 | 2008-12-17    | 2008-12-17     |
|            79 |             28 | 2009-01-13    | 2009-01-13     |
|            82 |             28 | 2009-01-29    | 2009-01-29     |
|            89 |             35 | 2007-12-10    | 2007-12-13     |
|            91 |             27 | 2009-03-27    | 2009-03-29     |
|            93 |             27 | 2009-05-17    | 2009-05-30     |
|            95 |             35 | 2008-01-19    | 2008-01-19     |
|            96 |             35 | 2008-04-13    | 2008-04-12     |
|            97 |             35 | 2008-11-25    | 2008-11-25     |
|           100 |             16 | 2009-01-15    | 2009-01-15     |
|           102 |             16 | 2009-01-08    | 2009-01-08     |
|           104 |             30 | 2009-03-06    | 2009-03-06     |
|           107 |             30 | 2009-04-10    | 2009-04-10     |
|           108 |             16 | 2009-04-15    | 2009-04-15     |
|           109 |             38 | 2006-07-28    | 2006-07-28     |
|           110 |             38 | 2007-04-24    | 2007-04-24     |
|           111 |             36 | 2008-03-30    | 2008-03-30     |
|           114 |             36 | 2009-01-31    | 2009-01-29     |
|           116 |             38 | 2008-08-01    | 2008-08-01     |
|           119 |             16 | 2009-01-15    | 2009-01-15     |
|           121 |             16 | 2009-01-08    | 2009-01-08     |
|           122 |             16 | 2009-04-15    | 2009-04-15     |
|           124 |             30 | 2009-03-06    | 2009-03-06     |
|           127 |             30 | 2009-04-10    | 2009-04-10     |
+---------------+----------------+---------------+----------------+
55 rows in set (0.002 sec)

--11 Devuelve un listado de todos los pedidos que fueron rechazados en 2009.
SELECT * FROM pedido WHERE estado = ‘rechazado’;
+---------------+--------------+----------------+---------------+-----------+-------------------------------------------------------------------------------+----------------+
| codigo_pedido | fecha_pedido | fecha_esperada | fecha_entrega | estado    | comentarios                                                                   | codigo_cliente |
+---------------+--------------+----------------+---------------+-----------+-------------------------------------------------------------------------------+----------------+
|             3 | 2008-06-20   | 2008-06-25     | NULL          | Rechazado | Limite de credito superado                                                    |              5 |
|            14 | 2009-01-02   | 2009-01-02     | NULL          | Rechazado | mal pago                                                                      |              7 |
|            21 | 2009-01-09   | 2009-01-09     | 2009-01-09    | Rechazado | mal pago                                                                      |              9 |
|            23 | 2008-12-30   | 2009-01-10     | NULL          | Rechazado | El pedido fue anulado por el cliente                                          |              5 |
|            25 | 2009-02-02   | 2009-02-08     | NULL          | Rechazado | El cliente carece de saldo en la cuenta asociada                              |              1 |
|            26 | 2009-02-06   | 2009-02-12     | NULL          | Rechazado | El cliente anula la operacion para adquirir mas producto                      |              3 |
|            29 | 2008-08-01   | 2008-09-01     | 2008-09-01    | Rechazado | El cliente no est? conforme con el pedido                                     |             14 |
|            31 | 2008-09-04   | 2008-09-30     | 2008-10-04    | Rechazado | El cliente ha rechazado por llegar 5 dias tarde                               |             13 |
|            33 | 2007-05-20   | 2007-05-28     | NULL          | Rechazado | El pedido fue anulado por el cliente                                          |              4 |
|            35 | 2008-03-10   | 2009-03-20     | NULL          | Rechazado | Limite de credito superado                                                    |              4 |
|            40 | 2009-03-09   | 2009-03-10     | 2009-03-13    | Rechazado | NULL                                                                          |             19 |
|            46 | 2009-04-03   | 2009-03-04     | 2009-03-05    | Rechazado | NULL                                                                          |             23 |
|            56 | 2008-12-19   | 2009-01-20     | NULL          | Rechazado | El cliente a anulado el pedido el dia 2009-01-10                              |             13 |
|            65 | 2009-02-02   | 2009-02-08     | NULL          | Rechazado | El cliente carece de saldo en la cuenta asociada                              |              1 |
|            66 | 2009-02-06   | 2009-02-12     | NULL          | Rechazado | El cliente anula la operacion para adquirir mas producto                      |              3 |
|            74 | 2009-01-14   | 2009-01-22     | NULL          | Rechazado | El pedido no llego el dia que queria el cliente por fallo del transporte      |             15 |
|            81 | 2009-01-18   | 2009-01-24     | NULL          | Rechazado | Los producto estaban en mal estado                                            |             28 |
|           101 | 2009-03-07   | 2009-03-27     | NULL          | Rechazado | El pedido fue rechazado por el cliente                                        |             16 |
|           105 | 2009-02-14   | 2009-02-20     | NULL          | Rechazado | el producto ha sido rechazado por la pesima calidad                           |             30 |
|           113 | 2008-10-28   | 2008-11-09     | 2009-01-09    | Rechazado | El producto ha sido rechazado por la tardanza de el envio                     |             36 |
|           117 | 2008-08-25   | 2008-10-01     | NULL          | Rechazado | El pedido ha sido rechazado por la acumulacion de pago pendientes del cliente |             38 |
|           120 | 2009-03-07   | 2009-03-27     | NULL          | Rechazado | El pedido fue rechazado por el cliente                                        |             16 |
|           125 | 2009-02-14   | 2009-02-20     | NULL          | Rechazado | el producto ha sido rechazado por la pesima calidad                           |             30 |
|           128 | 2008-11-10   | 2008-12-10     | 2008-12-29    | Rechazado | El pedido ha sido rechazado por el cliente por el retraso en la entrega       |             38 |
+---------------+--------------+----------------+---------------+-----------+-------------------------------------------------------------------------------+----------------+
24 rows in set (0.000 sec)

--12 Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año
SELECT * FROM pedido WHERE extract(month from fecha_entrega);
+---------------+--------------+----------------+---------------+-----------+------------------------------------------------------------------------------------------------+----------------+
| codigo_pedido | fecha_pedido | fecha_esperada | fecha_entrega | estado    | comentarios                                                                                    | codigo_cliente |
+---------------+--------------+----------------+---------------+-----------+------------------------------------------------------------------------------------------------+----------------+
|             1 | 2006-01-17   | 2006-01-19     | 2006-01-19    | Entregado | Pagado a plazos                                                                                |              5 |
|             2 | 2007-10-23   | 2007-10-28     | 2007-10-26    | Entregado | La entrega llego antes de lo esperado                                                          |              5 |
|             8 | 2008-11-09   | 2008-11-14     | 2008-11-14    | Entregado | El cliente paga la mitad con tarjeta y la otra mitad con efectivo, se le realizan dos facturas |              1 |
|             9 | 2008-12-22   | 2008-12-27     | 2008-12-28    | Entregado | El cliente comprueba la integridad del paquete, todo correcto                                  |              1 |
|            13 | 2009-01-12   | 2009-01-14     | 2009-01-15    | Entregado | NULL                                                                                           |              7 |
|            15 | 2009-01-09   | 2009-01-12     | 2009-01-11    | Entregado | NULL                                                                                           |              7 |
|            16 | 2009-01-06   | 2009-01-07     | 2009-01-15    | Entregado | NULL                                                                                           |              7 |
|            17 | 2009-01-08   | 2009-01-09     | 2009-01-11    | Entregado | mal estado                                                                                     |              7 |
|            18 | 2009-01-05   | 2009-01-06     | 2009-01-07    | Entregado | NULL                                                                                           |              9 |
|            21 | 2009-01-09   | 2009-01-09     | 2009-01-09    | Rechazado | mal pago                                                                                       |              9 |
|            22 | 2009-01-11   | 2009-01-11     | 2009-01-13    | Entregado | NULL                                                                                           |              9 |
|            24 | 2008-07-14   | 2008-07-31     | 2008-07-25    | Entregado | NULL                                                                                           |             14 |
|            28 | 2009-02-10   | 2009-02-17     | 2009-02-20    | Entregado | El cliente se queja bastante de la espera asociada al producto                                 |              3 |
|            29 | 2008-08-01   | 2008-09-01     | 2008-09-01    | Rechazado | El cliente no est? conforme con el pedido                                                      |             14 |
|            30 | 2008-08-03   | 2008-09-03     | 2008-08-31    | Entregado | NULL                                                                                           |             13 |
|            31 | 2008-09-04   | 2008-09-30     | 2008-10-04    | Rechazado | El cliente ha rechazado por llegar 5 dias tarde                                                |             13 |
|            32 | 2007-01-07   | 2007-01-19     | 2007-01-27    | Entregado | Entrega tardia, el cliente puso reclamacion                                                    |              4 |
|            34 | 2007-06-20   | 2008-06-28     | 2008-06-28    | Entregado | Pagado a plazos                                                                                |              4 |
|            36 | 2008-10-15   | 2008-12-15     | 2008-12-10    | Entregado | NULL                                                                                           |             14 |
|            38 | 2009-03-05   | 2009-03-06     | 2009-03-07    | Entregado | NULL                                                                                           |             19 |
|            39 | 2009-03-06   | 2009-03-07     | 2009-03-09    | Pendiente | NULL                                                                                           |             19 |
|            40 | 2009-03-09   | 2009-03-10     | 2009-03-13    | Rechazado | NULL                                                                                           |             19 |
|            41 | 2009-03-12   | 2009-03-13     | 2009-03-13    | Entregado | NULL                                                                                           |             19 |
|            42 | 2009-03-22   | 2009-03-23     | 2009-03-27    | Entregado | NULL                                                                                           |             19 |
|            43 | 2009-03-25   | 2009-03-26     | 2009-03-28    | Pendiente | NULL                                                                                           |             23 |
|            44 | 2009-03-26   | 2009-03-27     | 2009-03-30    | Pendiente | NULL                                                                                           |             23 |
|            45 | 2009-04-01   | 2009-03-04     | 2009-03-07    | Entregado | NULL                                                                                           |             23 |
|            46 | 2009-04-03   | 2009-03-04     | 2009-03-05    | Rechazado | NULL                                                                                           |             23 |
|            47 | 2009-04-15   | 2009-03-17     | 2009-03-17    | Entregado | NULL                                                                                           |             23 |
|            48 | 2008-03-17   | 2008-03-30     | 2008-03-29    | Entregado | Seg?n el Cliente, el pedido lleg? defectuoso                                                   |             26 |
|            49 | 2008-07-12   | 2008-07-22     | 2008-07-30    | Entregado | El pedido lleg? 1 d?a tarde, pero no hubo queja por parte de la empresa compradora             |             26 |
|            51 | 2008-10-01   | 2008-10-14     | 2008-10-14    | Entregado | Todo se entreg? a tiempo y en perfecto estado, a pesar del p?simo estado de las carreteras.    |             26 |
|            53 | 2008-10-15   | 2008-11-15     | 2008-11-09    | Entregado | El pedido llega 6 dias antes                                                                   |             13 |
|            55 | 2008-12-10   | 2009-01-10     | 2009-01-11    | Entregado | Retrasado 1 dia por problemas de transporte                                                    |             14 |
|            58 | 2009-01-24   | 2009-01-31     | 2009-01-30    | Entregado | Todo correcto                                                                                  |              3 |
|            59 | 2008-11-09   | 2008-11-14     | 2008-11-14    | Entregado | El cliente paga la mitad con tarjeta y la otra mitad con efectivo, se le realizan dos facturas |              1 |
|            60 | 2008-12-22   | 2008-12-27     | 2008-12-28    | Entregado | El cliente comprueba la integridad del paquete, todo correcto                                  |              1 |
|            64 | 2009-01-24   | 2009-01-31     | 2009-01-30    | Entregado | Todo correcto                                                                                  |              1 |
|            68 | 2009-02-10   | 2009-02-17     | 2009-02-20    | Entregado | El cliente se queja bastante de la espera asociada al producto                                 |              3 |
|            75 | 2009-01-11   | 2009-01-13     | 2009-01-13    | Entregado | El pedido llego perfectamente                                                                  |             15 |
|            76 | 2008-11-15   | 2008-11-23     | 2008-11-23    | Entregado | NULL                                                                                           |             15 |
|            78 | 2008-12-15   | 2008-12-17     | 2008-12-17    | Entregado | Fue entregado, pero faltaba mercancia que sera entregada otro dia                              |             15 |
|            79 | 2009-01-12   | 2009-01-13     | 2009-01-13    | Entregado | NULL                                                                                           |             28 |
|            82 | 2009-01-20   | 2009-01-29     | 2009-01-29    | Entregado | El pedido llego un poco mas tarde de la hora fijada                                            |             28 |
|            89 | 2007-10-05   | 2007-12-13     | 2007-12-10    | Entregado | La entrega se realizo dias antes de la fecha esperada por lo que el cliente quedo satisfecho   |             35 |
|            91 | 2009-03-18   | 2009-03-29     | 2009-03-27    | Entregado | Todo se entreg? a su debido tiempo, incluso con un d?a de antelaci?n                           |             27 |
|            92 | 2009-04-19   | 2009-04-30     | 2009-05-03    | Entregado | El pedido se entreg? tarde debido a la festividad celebrada en Espa?a durante esas fechas      |             27 |
|            93 | 2009-05-03   | 2009-05-30     | 2009-05-17    | Entregado | El pedido se entreg? antes de lo esperado.                                                     |             27 |
|            95 | 2008-01-04   | 2008-01-19     | 2008-01-19    | Entregado | NULL                                                                                           |             35 |
|            96 | 2008-03-20   | 2008-04-12     | 2008-04-13    | Entregado | La entrega se retraso un dia                                                                   |             35 |
|            97 | 2008-10-08   | 2008-11-25     | 2008-11-25    | Entregado | NULL                                                                                           |             35 |
|           100 | 2009-01-10   | 2009-01-15     | 2009-01-15    | Entregado | El pedido llego perfectamente                                                                  |             16 |
|           102 | 2008-12-28   | 2009-01-08     | 2009-01-08    | Entregado | Pago pendiente                                                                                 |             16 |
|           103 | 2009-01-15   | 2009-01-20     | 2009-01-24    | Pendiente | NULL                                                                                           |             30 |
|           104 | 2009-03-02   | 2009-03-06     | 2009-03-06    | Entregado | NULL                                                                                           |             30 |
|           106 | 2009-05-13   | 2009-05-15     | 2009-05-20    | Pendiente | NULL                                                                                           |             30 |
|           107 | 2009-04-06   | 2009-04-10     | 2009-04-10    | Entregado | NULL                                                                                           |             30 |
|           108 | 2009-04-09   | 2009-04-15     | 2009-04-15    | Entregado | NULL                                                                                           |             16 |
|           109 | 2006-05-25   | 2006-07-28     | 2006-07-28    | Entregado | NULL                                                                                           |             38 |
|           110 | 2007-03-19   | 2007-04-24     | 2007-04-24    | Entregado | NULL                                                                                           |             38 |
|           111 | 2008-03-05   | 2008-03-30     | 2008-03-30    | Entregado | NULL                                                                                           |             36 |
|           112 | 2009-03-05   | 2009-04-06     | 2009-05-07    | Pendiente | NULL                                                                                           |             36 |
|           113 | 2008-10-28   | 2008-11-09     | 2009-01-09    | Rechazado | El producto ha sido rechazado por la tardanza de el envio                                      |             36 |
|           114 | 2009-01-15   | 2009-01-29     | 2009-01-31    | Entregado | El envio llego dos dias m?s tarde debido al mal tiempo                                         |             36 |
|           115 | 2008-11-29   | 2009-01-26     | 2009-02-27    | Pendiente | NULL                                                                                           |             36 |
|           116 | 2008-06-28   | 2008-08-01     | 2008-08-01    | Entregado | NULL                                                                                           |             38 |
|           119 | 2009-01-10   | 2009-01-15     | 2009-01-15    | Entregado | El pedido llego perfectamente                                                                  |             16 |
|           121 | 2008-12-28   | 2009-01-08     | 2009-01-08    | Entregado | Pago pendiente                                                                                 |             16 |
|           122 | 2009-04-09   | 2009-04-15     | 2009-04-15    | Entregado | NULL                                                                                           |             16 |
|           123 | 2009-01-15   | 2009-01-20     | 2009-01-24    | Pendiente | NULL                                                                                           |             30 |
|           124 | 2009-03-02   | 2009-03-06     | 2009-03-06    | Entregado | NULL                                                                                           |             30 |
|           126 | 2009-05-13   | 2009-05-15     | 2009-05-20    | Pendiente | NULL                                                                                           |             30 |
|           127 | 2009-04-06   | 2009-04-10     | 2009-04-10    | Entregado | NULL                                                                                           |             30 |
|           128 | 2008-11-10   | 2008-12-10     | 2008-12-29    | Rechazado | El pedido ha sido rechazado por el cliente por el retraso en la entrega                        |             38 |
+---------------+--------------+----------------+---------------+-----------+------------------------------------------------------------------------------------------------+----------------+
74 rows in set (0.000 sec)

--13 Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de
--mayor a menor
SELECT * FROM pago WHERE forma_pago = ‘PayPal’ ORDER BY total ASC;
+----------------+------------+----------------+------------+----------+
| codigo_cliente | forma_pago | id_transaccion | fecha_pago | total    |
+----------------+------------+----------------+------------+----------+
|             19 | PayPal     | ak-std-000018  | 2009-03-06 |   232.00 |
|             23 | PayPal     | ak-std-000019  | 2009-03-26 |   272.00 |
|              3 | PayPal     | ak-std-000005  | 2009-02-19 |   926.00 |
|              9 | PayPal     | ak-std-000013  | 2009-01-06 |   929.00 |
|             38 | PayPal     | ak-std-000026  | 2006-05-26 |  1171.00 |
|              4 | PayPal     | ak-std-000010  | 2007-01-08 |  1849.00 |
|              1 | PayPal     | ak-std-000001  | 2008-11-10 |  2000.00 |
|              1 | PayPal     | ak-std-000002  | 2008-12-10 |  2000.00 |
|             15 | PayPal     | ak-std-000016  | 2009-01-15 |  2081.00 |
|             13 | PayPal     | ak-std-000014  | 2008-08-04 |  2246.00 |
|             35 | PayPal     | ak-std-000025  | 2007-10-06 |  3321.00 |
|             14 | PayPal     | ak-std-000015  | 2008-07-15 |  4160.00 |
|             16 | PayPal     | ak-std-000017  | 2009-02-16 |  4399.00 |
|              3 | PayPal     | ak-std-000004  | 2009-02-16 |  5000.00 |
|              3 | PayPal     | ak-std-000003  | 2009-01-16 |  5000.00 |
|             30 | PayPal     | ak-std-000024  | 2009-01-16 |  7863.00 |
|             28 | PayPal     | ak-std-000022  | 2009-01-13 |  8489.00 |
|             15 | PayPal     | ak-std-000035  | 2009-02-15 | 10000.00 |
|             27 | PayPal     | ak-std-000021  | 2009-02-08 | 10972.00 |
|             26 | PayPal     | ak-std-000020  | 2008-03-18 | 18846.00 |
|              4 | PayPal     | ak-std-000007  | 2007-01-08 | 20000.00 |
|              4 | PayPal     | ak-std-000006  | 2007-01-08 | 20000.00 |
|              4 | PayPal     | ak-std-000009  | 2007-01-08 | 20000.00 |
|              4 | PayPal     | ak-std-000008  | 2007-01-08 | 20000.00 |
+----------------+------------+----------------+------------+----------+
24 rows in set (0.001 sec)

--14 Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en cuenta que no deben 
--aparecer formas de pago repetidas.
SELECT DISTINCT forma_pago FROM pago;
+---------------+
| forma_pago    |
+---------------+
| PayPal        |
| Transferencia |
| Cheque        |
+---------------+
3 rows in set (0.000 sec)

--15 Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades
-- en stock. El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio
SELECT codigo_producto, nombre, gama, cantidad_en_stock, precio_venta 
FROM producto
WHERE gama = ‘Ornamentales’ 
AND cantidad_en_stock >= 100 
ORDER BY precio_venta DESC;
+-----------------+-------------------------------------------------------------+--------------+-------------------+--------------+
| codigo_producto | nombre                                                      | gama         | cantidad_en_stock | precio_venta |
+-----------------+-------------------------------------------------------------+--------------+-------------------+--------------+
| OR-215          | Brahea Armata                                               | Ornamentales |               100 |       112.00 |
| OR-222          | Butia Capitata                                              | Ornamentales |               100 |        87.00 |
| OR-217          | Brahea Edulis                                               | Ornamentales |               100 |        64.00 |
| OR-227          | Chamaerops Humilis                                          | Ornamentales |               100 |        64.00 |
| OR-221          | Butia Capitata                                              | Ornamentales |               100 |        59.00 |
| OR-236          | Jubaea Chilensis                                            | Ornamentales |               100 |        49.00 |
| OR-230          | Cordyline Australis -DRACAENA                               | Ornamentales |               100 |        38.00 |
| OR-134          | Nerium Oleander Arbusto GRANDE                              | Ornamentales |               100 |        38.00 |
| OR-226          | Chamaerops Humilis                                          | Ornamentales |               100 |        38.00 |
| OR-220          | Butia Capitata                                              | Ornamentales |               100 |        36.00 |
| OR-232          | Cycas Revoluta                                              | Ornamentales |               100 |        34.00 |
| OR-228          | Chamaerops Humilis "Cerifera"                               | Ornamentales |               100 |        32.00 |
| OR-219          | Butia Capitata                                              | Ornamentales |               100 |        29.00 |
| OR-218          | Butia Capitata                                              | Ornamentales |               100 |        25.00 |
| OR-229          | Chrysalidocarpus Lutescens -ARECA                           | Ornamentales |               100 |        22.00 |
| OR-216          | Brahea Edulis                                               | Ornamentales |               100 |        19.00 |
| OR-136          | Nerium oleander ARBOL Calibre 8/10                          | Ornamentales |               100 |        18.00 |
| OR-149          | Bougamvillea Sanderiana Espaldera                           | Ornamentales |               100 |        17.00 |
| OR-231          | Cycas Revoluta                                              | Ornamentales |               100 |        15.00 |
| OR-99           | Mimosa DEALBATA Gaulois Astier                              | Ornamentales |               100 |        14.00 |
| OR-144          | Wisteria Sinensis INJERTADAS DEC?                           | Ornamentales |               100 |        12.00 |
| OR-100          | Mimosa Injerto CLASICA Dealbata                             | Ornamentales |               100 |        12.00 |
| OR-225          | Chamaerops Humilis                                          | Ornamentales |               100 |        10.00 |
| OR-103          | Mimosa Semilla Bayleyana                                    | Ornamentales |               100 |        10.00 |
| OR-104          | Mimosa Semilla Cyanophylla                                  | Ornamentales |               100 |        10.00 |
| OR-106          | Mimosa Semilla Longifolia                                   | Ornamentales |               100 |        10.00 |
| OR-156          | Acer platanoides                                            | Ornamentales |               100 |        10.00 |
| OR-157          | Acer Pseudoplatanus                                         | Ornamentales |               100 |        10.00 |
| OR-160          | Brachychiton Rupestris                                      | Ornamentales |               100 |        10.00 |
| OR-162          | Cassia Corimbosa                                            | Ornamentales |               100 |        10.00 |
| OR-143          | Wisteria Sinensis  azul, rosa, blanca                       | Ornamentales |               100 |         9.00 |
| OR-148          | Bougamvillea Sanderiana Espaldera                           | Ornamentales |               100 |         7.00 |
| OR-147          | Bougamvillea Sanderiana Tutor                               | Ornamentales |               100 |         7.00 |
| OR-118          | Hibiscus Syriacus "Pink Giant" Rosa                         | Ornamentales |               120 |         7.00 |
| OR-224          | Chamaerops Humilis                                          | Ornamentales |               100 |         7.00 |
| OR-116          | Hibiscus Syriacus  "Diana" -Blanco Puro                     | Ornamentales |               120 |         7.00 |
| OR-115          | Forsytia Intermedia "Lynwood"                               | Ornamentales |               120 |         7.00 |
| OR-117          | Hibiscus Syriacus  "Helene" -Blanco-C.rojo                  | Ornamentales |               120 |         7.00 |
| OR-153          | Expositor ?rboles clima mediterr?neo                        | Ornamentales |               100 |         6.00 |
| OR-155          | Acer Negundo                                                | Ornamentales |               100 |         6.00 |
| OR-152          | Expositor ?rboles clima continental                         | Ornamentales |               100 |         6.00 |
| OR-158          | Brachychiton Acerifolius                                    | Ornamentales |               100 |         6.00 |
| OR-159          | Brachychiton Discolor                                       | Ornamentales |               100 |         6.00 |
| OR-161          | Cassia Corimbosa                                            | Ornamentales |               100 |         6.00 |
| OR-101          | Expositor Mimosa Semilla Mix                                | Ornamentales |               100 |         6.00 |
| OR-151          | Bougamvillea Sanderiana, 3 tut. piramide                    | Ornamentales |               100 |         6.00 |
| OR-102          | Mimosa Semilla Bayleyana                                    | Ornamentales |               100 |         6.00 |
| OR-105          | Mimosa Semilla Espectabilis                                 | Ornamentales |               100 |         6.00 |
| OR-107          | Mimosa Semilla Floribunda 4 estaciones                      | Ornamentales |               100 |         6.00 |
| OR-154          | Expositor ?rboles borde del mar                             | Ornamentales |               100 |         6.00 |
| OR-111          | Corylus Avellana "Contorta"                                 | Ornamentales |               100 |         5.00 |
| OR-108          | Abelia Floribunda                                           | Ornamentales |               100 |         5.00 |
| OR-112          | Escallonia (Mix)                                            | Ornamentales |               120 |         5.00 |
| OR-113          | Evonimus Emerald Gayeti                                     | Ornamentales |               120 |         5.00 |
| OR-109          | Callistemom (Mix)                                           | Ornamentales |               100 |         5.00 |
| OR-119          | Laurus Nobilis Arbusto - Ramificado Bajo                    | Ornamentales |               120 |         5.00 |
| OR-120          | Lonicera Nitida                                             | Ornamentales |               120 |         5.00 |
| OR-121          | Lonicera Nitida "Maigrum"                                   | Ornamentales |               120 |         5.00 |
| OR-122          | Lonicera Pileata                                            | Ornamentales |               120 |         5.00 |
| OR-114          | Evonimus Pulchellus                                         | Ornamentales |               120 |         5.00 |
| OR-135          | Nerium oleander COPA  Calibre 6/8                           | Ornamentales |               100 |         5.00 |
| OR-126          | Weigelia "Bristol Ruby"                                     | Ornamentales |               120 |         5.00 |
| OR-125          | Viburnum Tinus "Eve Price"                                  | Ornamentales |               120 |         5.00 |
| OR-123          | Philadelphus "Virginal"                                     | Ornamentales |               120 |         5.00 |
| OR-124          | Prunus pisardii                                             | Ornamentales |               120 |         5.00 |
| OR-138          | Camelia Blanco, Chrysler Rojo, Soraya Naranja,              | Ornamentales |               100 |         4.00 |
| OR-141          | Pitimini rojo                                               | Ornamentales |               100 |         4.00 |
| OR-223          | Chamaerops Humilis                                          | Ornamentales |               100 |         4.00 |
| OR-137          | ROSAL TREPADOR                                              | Ornamentales |               100 |         4.00 |
| OR-140          | Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte | Ornamentales |               100 |         4.00 |
| OR-139          | Landora Amarillo, Rose Gaujard bicolor blanco-rojo          | Ornamentales |               100 |         4.00 |
| OR-146          | Bougamvillea Sanderiana Tutor                               | Ornamentales |               100 |         4.00 |
| OR-142          | Solanum Jazminoide                                          | Ornamentales |               100 |         2.00 |
| OR-145          | Bougamvillea Sanderiana Tutor                               | Ornamentales |               100 |         2.00 |
| OR-150          | Bougamvillea roja, naranja                                  | Ornamentales |               100 |         2.00 |
| OR-110          | Callistemom (Mix)                                           | Ornamentales |               100 |         2.00 |
+-----------------+-------------------------------------------------------------+--------------+-------------------+--------------+
76 rows in set (0.008 sec)

--16 Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas
--tenga el código de empleado 11 o 30.
SELECT * FROM cliente WHERE ciudad = ‘Madrid’ AND codigo_empleado_rep_ventas IN (11, 30);
+----------------+-----------------------------+-----------------+-------------------+-----------+-----------+-------------------+------------------+--------+--------+-------+---------------+----------------------------+----------------+
| codigo_cliente | nombre_cliente              | nombre_contacto | apellido_contacto | telefono  | fax       | linea_direccion1  | linea_direccion2 | ciudad | region | pais  | codigo_postal | codigo_empleado_rep_ventas | limite_credito |
+----------------+-----------------------------+-----------------+-------------------+-----------+-----------+-------------------+------------------+--------+--------+-------+---------------+----------------------------+----------------+
|              7 | Beragua                     | Jose            | Bermejo           | 654987321 | 916549872 | C/pintor segundo  | Getafe           | Madrid | Madrid | Spain | 28942         |                         11 |       20000.00 |
|              8 | Club Golf Puerta del hierro | Paco            | Lopez             | 62456810  | 919535678 | C/sinesio delgado | Madrid           | Madrid | Madrid | Spain | 28930         |                         11 |       40000.00 |
|              9 | Naturagua                   | Guillermo       | Rengifo           | 689234750 | 916428956 | C/majadahonda     | Boadilla         | Madrid | Madrid | Spain | 28947         |                         11 |       32000.00 |
|             10 | DaraDistribuciones          | David           | Serrano           | 675598001 | 916421756 | C/azores          | Fuenlabrada      | Madrid | Madrid | Spain | 28946         |                         11 |       50000.00 |
|             11 | Madrile?a de riegos         | Jose            | Taca?o            | 655983045 | 916689215 | C/Laga?as         | Fuenlabrada      | Madrid | Madrid | Spain | 28943         |                         11 |       20000.00 |
|             15 | Jardin de Flores            | Javier          | Villar            | 654865643 | 914538776 | C/ O?a 34         | NULL             | Madrid | Madrid | Spain | 28950         |                         30 |       40000.00 |
|             18 | Naturajardin                | Victoria        | Cruz              | 612343529 | 916548735 | Plaza Magall?n 15 | NULL             | Madrid | Madrid | Spain | 28011         |                         30 |        5050.00 |
+----------------+-----------------------------+-----------------+-------------------+-----------+-----------+-------------------+------------------+--------+--------+-------+---------------+----------------------------+----------------+
7 rows in set (0.002 sec)

--17Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.
SELECT nombre_cliente AS cli, nombre AS repn, apellido1 AS repa 
FROM cliente, empleado 
WHERE codigo_empleado_rep_ventas = codigo_empleado;
+--------------------------------+-----------------+------------+
| cli                            | repn            | repa       |
+--------------------------------+-----------------+------------+
| GoldFish Garden                | Walter Santiago | Sanchez    |
| Gardening Associates           | Walter Santiago | Sanchez    |
| Gerudo Valley                  | Lorena          | Paxton     |
| Tendo Garden                   | Lorena          | Paxton     |
| Lasas S.A.                     | Mariano         | L?pez      |
| Beragua                        | Emmanuel        | Maga?a     |
| Club Golf Puerta del hierro    | Emmanuel        | Maga?a     |
| Naturagua                      | Emmanuel        | Maga?a     |
| DaraDistribuciones             | Emmanuel        | Maga?a     |
| Madrile?a de riegos            | Emmanuel        | Maga?a     |
| Lasas S.A.                     | Mariano         | L?pez      |
| Camunas Jardines S.L.          | Mariano         | L?pez      |
| Dardena S.A.                   | Mariano         | L?pez      |
| Jardin de Flores               | Julian          | Bellinelli |
| Flores Marivi                  | Felipe          | Rosas      |
| Flowers, S.A                   | Felipe          | Rosas      |
| Naturajardin                   | Julian          | Bellinelli |
| Golf S.A.                      | Jos? Manuel     | Martinez   |
| Americh Golf Management SL     | Jos? Manuel     | Martinez   |
| Aloha                          | Jos? Manuel     | Martinez   |
| El Prat                        | Jos? Manuel     | Martinez   |
| Sotogrande                     | Jos? Manuel     | Martinez   |
| Vivero Humanes                 | Julian          | Bellinelli |
| Fuenla City                    | Felipe          | Rosas      |
| Jardines y Mansiones Cactus SL | Lucio           | Campoamor  |
| Jardiner?as Mat?as SL          | Lucio           | Campoamor  |
| Agrojardin                     | Julian          | Bellinelli |
| Top Campo                      | Felipe          | Rosas      |
| Jardineria Sara                | Felipe          | Rosas      |
| Campohermoso                   | Julian          | Bellinelli |
| france telecom                 | Lionel          | Narvaez    |
| Mus?e du Louvre                | Lionel          | Narvaez    |
| Tutifruti S.A                  | Mariko          | Kishi      |
| Flores S.L.                    | Michael         | Bolton     |
| The Magic Garden               | Michael         | Bolton     |
| El Jardin Viviente S.L         | Mariko          | Kishi      |
+--------------------------------+-----------------+------------+
36 rows in set (0.000 sec)

--18 Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.
SELECT nombre_cliente AS nomcli, nombre AS nombrerep
FROM cliente, empleado
WHERE codigo_empleado = codigo_empleado_rep_ventas AND codigo_cliente IN (SELECT codigo_cliente FROM pago);
+--------------------------------+-----------------+
| nomcli                         | nombrerep       |
+--------------------------------+-----------------+
| GoldFish Garden                | Walter Santiago |
| Gardening Associates           | Walter Santiago |
| Gerudo Valley                  | Lorena          |
| Tendo Garden                   | Lorena          |
| Beragua                        | Emmanuel        |
| Naturagua                      | Emmanuel        |
| Camunas Jardines S.L.          | Mariano         |
| Dardena S.A.                   | Mariano         |
| Jardin de Flores               | Julian          |
| Flores Marivi                  | Felipe          |
| Golf S.A.                      | Jos? Manuel     |
| Sotogrande                     | Jos? Manuel     |
| Jardines y Mansiones Cactus SL | Lucio           |
| Jardiner?as Mat?as SL          | Lucio           |
| Agrojardin                     | Julian          |
| Jardineria Sara                | Felipe          |
| Tutifruti S.A                  | Mariko          |
| El Jardin Viviente S.L         | Mariko          |
+--------------------------------+-----------------+
18 rows in set (0.003 sec)

--19 Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.
SELECT nombre_cliente, nombre FROM cliente C, empleado E
WHERE codigo_empleado_rep_ventas = codigo_empleado 
AND C.codigo_cliente NOT IN (SELECT codigo_cliente FROM pago);
+-----------------------------+-------------+
| nombre_cliente              | nombre      |
+-----------------------------+-------------+
| Lasas S.A.                  | Mariano     |
| Club Golf Puerta del hierro | Emmanuel    |
| DaraDistribuciones          | Emmanuel    |
| Madrile?a de riegos         | Emmanuel    |
| Lasas S.A.                  | Mariano     |
| Flowers, S.A                | Felipe      |
| Naturajardin                | Julian      |
| Americh Golf Management SL  | Jos? Manuel |
| Aloha                       | Jos? Manuel |
| El Prat                     | Jos? Manuel |
| Vivero Humanes              | Julian      |
| Fuenla City                 | Felipe      |
| Top Campo                   | Felipe      |
| Campohermoso                | Julian      |
| france telecom              | Lionel      |
| Mus?e du Louvre             | Lionel      |
| Flores S.L.                 | Michael     |
| The Magic Garden            | Michael     |
+-----------------------------+-------------+
18 rows in set (0.001 sec)


--20 Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes junto con la 
--ciudad de la oficina a la que pertenece el representante.
SELECT nombre_cliente, nombre, O.ciudad
FROM cliente C, empleado E, oficina O
WHERE  C.codigo_empleado_rep_ventas = E.codigo_empleado 
AND E.codigo_oficina = O.codigo_oficina 
AND C.codigo_cliente IN (SELECT codigo_cliente FROM pago);
+--------------------------------+-----------------+----------------------+
| nombre_cliente                 | nombre          | ciudad               |
+--------------------------------+-----------------+----------------------+
| Beragua                        | Emmanuel        | Barcelona            |
| Naturagua                      | Emmanuel        | Barcelona            |
| Golf S.A.                      | Jos? Manuel     | Barcelona            |
| Sotogrande                     | Jos? Manuel     | Barcelona            |
| Gerudo Valley                  | Lorena          | Boston               |
| Tendo Garden                   | Lorena          | Boston               |
| Camunas Jardines S.L.          | Mariano         | Madrid               |
| Dardena S.A.                   | Mariano         | Madrid               |
| Jardines y Mansiones Cactus SL | Lucio           | Madrid               |
| Jardiner?as Mat?as SL          | Lucio           | Madrid               |
| GoldFish Garden                | Walter Santiago | San Francisco        |
| Gardening Associates           | Walter Santiago | San Francisco        |
| Jardin de Flores               | Julian          | Sydney               |
| Agrojardin                     | Julian          | Sydney               |
| Tutifruti S.A                  | Mariko          | Sydney               |
| El Jardin Viviente S.L         | Mariko          | Sydney               |
| Flores Marivi                  | Felipe          | Talavera de la Reina |
| Jardineria Sara                | Felipe          | Talavera de la Reina |
+--------------------------------+-----------------+----------------------+
18 rows in set (0.002 sec)

--21 Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus representantes junto con
--la ciudad de la oficina a la que pertenece el representante.
SELECT nombre_cliente, nombre, O.ciudad
FROM cliente C, empleado E, oficina O
WHERE  C.codigo_empleado_rep_ventas = E.codigo_empleado 
AND E.codigo_oficina = O.codigo_oficina 
AND C.codigo_cliente NOT IN (SELECT codigo_cliente FROM pago);
+-----------------------------+-------------+----------------------+
| nombre_cliente              | nombre      | ciudad               |
+-----------------------------+-------------+----------------------+
| Club Golf Puerta del hierro | Emmanuel    | Barcelona            |
| DaraDistribuciones          | Emmanuel    | Barcelona            |
| Madrile?a de riegos         | Emmanuel    | Barcelona            |
| Americh Golf Management SL  | Jos? Manuel | Barcelona            |
| Aloha                       | Jos? Manuel | Barcelona            |
| El Prat                     | Jos? Manuel | Barcelona            |
| Lasas S.A.                  | Mariano     | Madrid               |
| Lasas S.A.                  | Mariano     | Madrid               |
| france telecom              | Lionel      | Paris                |
| Mus?e du Louvre             | Lionel      | Paris                |
| Flores S.L.                 | Michael     | San Francisco        |
| The Magic Garden            | Michael     | San Francisco        |
| Naturajardin                | Julian      | Sydney               |
| Vivero Humanes              | Julian      | Sydney               |
| Campohermoso                | Julian      | Sydney               |
| Flowers, S.A                | Felipe      | Talavera de la Reina |
| Fuenla City                 | Felipe      | Talavera de la Reina |
| Top Campo                   | Felipe      | Talavera de la Reina |
+-----------------------------+-------------+----------------------+
18 rows in set (0.001 sec)

--22 Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.
SELECT DISTINCT O.codigo_oficina AS “OFICINA”, O.linea_direccion1 AS “PRIMER DIRECCION”, O.linea_direccion2 AS “SEGUNDA DIRECCION”, 
FROM cliente C, empleado E, oficina O
WHERE O.codigo_oficina IN (SELECT codigo_oficina, codigo_empleado FROM empleado)
AND E.codigo_empleado IN (SELECT codigo_empleado_rep_ventas, ciudad FROM cliente)
AND C.ciudad = “Fuenlabrada”;


--23
SELECT nombre_cliente AS “Nombre cliente”,  nombre “Nombre del representante”, O.ciudad AS “Ciudad representante”
FROM cliente C, empleado E, Oficina O
WHERE codigo_empleado_rep_ventas = codigo_empleado 
AND E.codigo_oficina = O.codigo_oficina;
+--------------------------------+--------------------------+----------------------+
| Nombre cliente                 | Nombre del representante | Ciudad representante |
+--------------------------------+--------------------------+----------------------+
| Beragua                        | Emmanuel                 | Barcelona            |
| Club Golf Puerta del hierro    | Emmanuel                 | Barcelona            |
| Naturagua                      | Emmanuel                 | Barcelona            |
| DaraDistribuciones             | Emmanuel                 | Barcelona            |
| Madrile?a de riegos            | Emmanuel                 | Barcelona            |
| Golf S.A.                      | Jos? Manuel              | Barcelona            |
| Americh Golf Management SL     | Jos? Manuel              | Barcelona            |
| Aloha                          | Jos? Manuel              | Barcelona            |
| El Prat                        | Jos? Manuel              | Barcelona            |
| Sotogrande                     | Jos? Manuel              | Barcelona            |
| Gerudo Valley                  | Lorena                   | Boston               |
| Tendo Garden                   | Lorena                   | Boston               |
| Lasas S.A.                     | Mariano                  | Madrid               |
| Lasas S.A.                     | Mariano                  | Madrid               |
| Camunas Jardines S.L.          | Mariano                  | Madrid               |
| Dardena S.A.                   | Mariano                  | Madrid               |
| Jardines y Mansiones Cactus SL | Lucio                    | Madrid               |
| Jardiner?as Mat?as SL          | Lucio                    | Madrid               |
| france telecom                 | Lionel                   | Paris                |
| Mus?e du Louvre                | Lionel                   | Paris                |
| Flores S.L.                    | Michael                  | San Francisco        |
| The Magic Garden               | Michael                  | San Francisco        |
| GoldFish Garden                | Walter Santiago          | San Francisco        |
| Gardening Associates           | Walter Santiago          | San Francisco        |
| Jardin de Flores               | Julian                   | Sydney               |
| Naturajardin                   | Julian                   | Sydney               |
| Vivero Humanes                 | Julian                   | Sydney               |
| Agrojardin                     | Julian                   | Sydney               |
| Campohermoso                   | Julian                   | Sydney               |
| Tutifruti S.A                  | Mariko                   | Sydney               |
| El Jardin Viviente S.L         | Mariko                   | Sydney               |
| Flores Marivi                  | Felipe                   | Talavera de la Reina |
| Flowers, S.A                   | Felipe                   | Talavera de la Reina |
| Fuenla City                    | Felipe                   | Talavera de la Reina |
| Top Campo                      | Felipe                   | Talavera de la Reina |
| Jardineria Sara                | Felipe                   | Talavera de la Reina |
+--------------------------------+--------------------------+----------------------+
36 rows in set (0.001 sec)

--24
SELECT nombre AS "Empleado nombre", nombrejefe AS "Nombre jefe"
FROM empleado E, (SELECT nombre AS "nombrejefe", codigo_empleado, codigo_jefe FROM empleado) J 
WHERE E.codigo_jefe = J.codigo_jefe
AND E.codigo_empleado = J.codigo_empleado;
+-----------------+-----------------+
| Empleado nombre | Nombre jefe     |
+-----------------+-----------------+
| Ruben           | Ruben           |
| Alberto         | Alberto         |
| Maria           | Maria           |
| Felipe          | Felipe          |
| Juan Carlos     | Juan Carlos     |
| Carlos          | Carlos          |
| Mariano         | Mariano         |
| Lucio           | Lucio           |
| Hilario         | Hilario         |
| Emmanuel        | Emmanuel        |
| Jos? Manuel     | Jos? Manuel     |
| David           | David           |
| Oscar           | Oscar           |
| Francois        | Francois        |
| Lionel          | Lionel          |
| Laurent         | Laurent         |
| Michael         | Michael         |
| Walter Santiago | Walter Santiago |
| Hilary          | Hilary          |
| Marcus          | Marcus          |
| Lorena          | Lorena          |
| Nei             | Nei             |
| Narumi          | Narumi          |
| Takuma          | Takuma          |
| Amy             | Amy             |
| Larry           | Larry           |
| John            | John            |
| Kevin           | Kevin           |
| Julian          | Julian          |
| Mariko          | Mariko          |
+-----------------+-----------------+
30 rows in set (0.001 sec)

--25 Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.
SELECT nombre_cliente AS "Nombre Cliente", fecha_entrega AS "Fecha de entraga", fecha_esperada AS "Fecha esperada"
FROM cliente C, pedido P
WHERE C.codigo_cliente = P.codigo_cliente 
AND P.fecha_esperada != P.fecha_entrega;
+--------------------------------+------------------+----------------+
| Nombre Cliente                 | Fecha de entraga | Fecha esperada |
+--------------------------------+------------------+----------------+
| Tendo Garden                   | 2007-10-26       | 2007-10-28     |
| GoldFish Garden                | 2008-12-28       | 2008-12-27     |
| Beragua                        | 2009-01-15       | 2009-01-14     |
| Beragua                        | 2009-01-11       | 2009-01-12     |
| Beragua                        | 2009-01-15       | 2009-01-07     |
| Beragua                        | 2009-01-11       | 2009-01-09     |
| Naturagua                      | 2009-01-07       | 2009-01-06     |
| Naturagua                      | 2009-01-13       | 2009-01-11     |
| Dardena S.A.                   | 2008-07-25       | 2008-07-31     |
| Gardening Associates           | 2009-02-20       | 2009-02-17     |
| Camunas Jardines S.L.          | 2008-08-31       | 2008-09-03     |
| Camunas Jardines S.L.          | 2008-10-04       | 2008-09-30     |
| Gerudo Valley                  | 2007-01-27       | 2007-01-19     |
| Dardena S.A.                   | 2008-12-10       | 2008-12-15     |
| Golf S.A.                      | 2009-03-07       | 2009-03-06     |
| Golf S.A.                      | 2009-03-09       | 2009-03-07     |
| Golf S.A.                      | 2009-03-13       | 2009-03-10     |
| Golf S.A.                      | 2009-03-27       | 2009-03-23     |
| Sotogrande                     | 2009-03-28       | 2009-03-26     |
| Sotogrande                     | 2009-03-30       | 2009-03-27     |
| Sotogrande                     | 2009-03-07       | 2009-03-04     |
| Sotogrande                     | 2009-03-05       | 2009-03-04     |
| Jardines y Mansiones Cactus SL | 2008-03-29       | 2008-03-30     |
| Jardines y Mansiones Cactus SL | 2008-07-30       | 2008-07-22     |
| Camunas Jardines S.L.          | 2008-11-09       | 2008-11-15     |
| Dardena S.A.                   | 2009-01-11       | 2009-01-10     |
| Gardening Associates           | 2009-01-30       | 2009-01-31     |
| GoldFish Garden                | 2008-12-28       | 2008-12-27     |
| GoldFish Garden                | 2009-01-30       | 2009-01-31     |
| Gardening Associates           | 2009-02-20       | 2009-02-17     |
| Tutifruti S.A                  | 2007-12-10       | 2007-12-13     |
| Jardiner?as Mat?as SL          | 2009-03-27       | 2009-03-29     |
| Jardiner?as Mat?as SL          | 2009-05-03       | 2009-04-30     |
| Jardiner?as Mat?as SL          | 2009-05-17       | 2009-05-30     |
| Tutifruti S.A                  | 2008-04-13       | 2008-04-12     |
| Jardineria Sara                | 2009-01-24       | 2009-01-20     |
| Jardineria Sara                | 2009-05-20       | 2009-05-15     |
| Flores S.L.                    | 2009-05-07       | 2009-04-06     |
| Flores S.L.                    | 2009-01-09       | 2008-11-09     |
| Flores S.L.                    | 2009-01-31       | 2009-01-29     |
| Flores S.L.                    | 2009-02-27       | 2009-01-26     |
| Jardineria Sara                | 2009-01-24       | 2009-01-20     |
| Jardineria Sara                | 2009-05-20       | 2009-05-15     |
| El Jardin Viviente S.L         | 2008-12-29       | 2008-12-10     |
+--------------------------------+------------------+----------------+
44 rows in set (0.000 sec)

--26 Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.
SELECT DISTINCT nombre "Producto", gama "Gama del producto", C.codigo_cliente "Cod cliente", C.nombre_cliente "Nombre cliente" 
FROM cliente C, pedido P, producto PR, (SELECT codigo_pedido, codigo_producto FROM detalle_pedido) A
WHERE  C.codigo_cliente = P.codigo_cliente
AND PR.codigo_producto = A.codigo_producto
AND P.codigo_pedido = A.codigo_pedido
ORDER BY C.codigo_cliente;
+--------------------------------+------------------+----------------+
| Nombre Cliente                 | Fecha de entraga | Fecha esperada |
+--------------------------------+------------------+----------------+
| Tendo Garden                   | 2007-10-26       | 2007-10-28     |
| GoldFish Garden                | 2008-12-28       | 2008-12-27     |
| Beragua                        | 2009-01-15       | 2009-01-14     |
| Beragua                        | 2009-01-11       | 2009-01-12     |
| Beragua                        | 2009-01-15       | 2009-01-07     |
| Beragua                        | 2009-01-11       | 2009-01-09     |
| Naturagua                      | 2009-01-07       | 2009-01-06     |
| Naturagua                      | 2009-01-13       | 2009-01-11     |
| Dardena S.A.                   | 2008-07-25       | 2008-07-31     |
| Gardening Associates           | 2009-02-20       | 2009-02-17     |
| Camunas Jardines S.L.          | 2008-08-31       | 2008-09-03     |
| Camunas Jardines S.L.          | 2008-10-04       | 2008-09-30     |
| Gerudo Valley                  | 2007-01-27       | 2007-01-19     |
| Dardena S.A.                   | 2008-12-10       | 2008-12-15     |
| Golf S.A.                      | 2009-03-07       | 2009-03-06     |
| Golf S.A.                      | 2009-03-09       | 2009-03-07     |
| Golf S.A.                      | 2009-03-13       | 2009-03-10     |
| Golf S.A.                      | 2009-03-27       | 2009-03-23     |
| Sotogrande                     | 2009-03-28       | 2009-03-26     |
| Sotogrande                     | 2009-03-30       | 2009-03-27     |
| Sotogrande                     | 2009-03-07       | 2009-03-04     |
| Sotogrande                     | 2009-03-05       | 2009-03-04     |
| Jardines y Mansiones Cactus SL | 2008-03-29       | 2008-03-30     |
| Jardines y Mansiones Cactus SL | 2008-07-30       | 2008-07-22     |
| Camunas Jardines S.L.          | 2008-11-09       | 2008-11-15     |
| Dardena S.A.                   | 2009-01-11       | 2009-01-10     |
| Gardening Associates           | 2009-01-30       | 2009-01-31     |
| GoldFish Garden                | 2008-12-28       | 2008-12-27     |
| GoldFish Garden                | 2009-01-30       | 2009-01-31     |
| Gardening Associates           | 2009-02-20       | 2009-02-17     |
| Tutifruti S.A                  | 2007-12-10       | 2007-12-13     |
| Jardiner?as Mat?as SL          | 2009-03-27       | 2009-03-29     |
| Jardiner?as Mat?as SL          | 2009-05-03       | 2009-04-30     |
| Jardiner?as Mat?as SL          | 2009-05-17       | 2009-05-30     |
| Tutifruti S.A                  | 2008-04-13       | 2008-04-12     |
| Jardineria Sara                | 2009-01-24       | 2009-01-20     |
| Jardineria Sara                | 2009-05-20       | 2009-05-15     |
| Flores S.L.                    | 2009-05-07       | 2009-04-06     |
| Flores S.L.                    | 2009-01-09       | 2008-11-09     |
| Flores S.L.                    | 2009-01-31       | 2009-01-29     |
| Flores S.L.                    | 2009-02-27       | 2009-01-26     |
| Jardineria Sara                | 2009-01-24       | 2009-01-20     |
| Jardineria Sara                | 2009-05-20       | 2009-05-15     |
| El Jardin Viviente S.L         | 2008-12-29       | 2008-12-10     |
+--------------------------------+------------------+----------------+
44 rows in set (0.000 sec)

--27 Devuelve un listado que muestre solamente a los clientes que no han realizado ningún pago.
SELECT nombre_cliente "Nombre del cliente", codigo_cliente "CODIGO DEL CLIENTE"
FROM cliente 
WHERE codigo_cliente NOT IN (SELECT codigo_cliente FROM pago);
+-----------------------------+--------------------+
| Nombre del cliente          | CODIGO DEL CLIENTE |
+-----------------------------+--------------------+
| Lasas S.A.                  |                  6 |
| Club Golf Puerta del hierro |                  8 |
| DaraDistribuciones          |                 10 |
| Madrile?a de riegos         |                 11 |
| Lasas S.A.                  |                 12 |
| Flowers, S.A                |                 17 |
| Naturajardin                |                 18 |
| Americh Golf Management SL  |                 20 |
| Aloha                       |                 21 |
| El Prat                     |                 22 |
| Vivero Humanes              |                 24 |
| Fuenla City                 |                 25 |
| Top Campo                   |                 29 |
| Campohermoso                |                 31 |
| france telecom              |                 32 |
| Mus?e du Louvre             |                 33 |
| Flores S.L.                 |                 36 |
| The Magic Garden            |                 37 |
+-----------------------------+--------------------+
18 rows in set (0.001 sec)

--28 Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido.
SELECT nombre_cliente "Nombre del cliente", codigo_cliente "CODIGO DEL CLIENTE"
FROM cliente C 
WHERE codigo_cliente NOT IN (SELECT codigo_cliente FROM pedido); 
+-----------------------------+--------------------+
| Nombre del cliente          | CODIGO DEL CLIENTE |
+-----------------------------+--------------------+
| Lasas S.A.                  |                  6 |
| Club Golf Puerta del hierro |                  8 |
| DaraDistribuciones          |                 10 |
| Madrile?a de riegos         |                 11 |
| Lasas S.A.                  |                 12 |
| Flowers, S.A                |                 17 |
| Naturajardin                |                 18 |
| Americh Golf Management SL  |                 20 |
| Aloha                       |                 21 |
| El Prat                     |                 22 |
| Vivero Humanes              |                 24 |
| Fuenla City                 |                 25 |
| Top Campo                   |                 29 |
| Campohermoso                |                 31 |
| france telecom              |                 32 |
| Mus?e du Louvre             |                 33 |
| The Magic Garden            |                 37 |
+-----------------------------+--------------------+
17 rows in set (0.004 sec)

--29 Devuelve un listado que muestre los clientes que no han realizado ningún pago y los que no han realizado ningún pedido.
SELECT nombre_cliente "Nombre del cliente", codigo_cliente "CODIGO DEL CLIENTE"
FROM cliente C 
WHERE codigo_cliente NOT IN (SELECT codigo_cliente FROM pedido) 
AND  codigo_cliente NOT IN (SELECT codigo_cliente FROM pago);
+-----------------------------+--------------------+
| Nombre del cliente          | CODIGO DEL CLIENTE |
+-----------------------------+--------------------+
| Lasas S.A.                  |                  6 |
| Club Golf Puerta del hierro |                  8 |
| DaraDistribuciones          |                 10 |
| Madrile?a de riegos         |                 11 |
| Lasas S.A.                  |                 12 |
| Flowers, S.A                |                 17 |
| Naturajardin                |                 18 |
| Americh Golf Management SL  |                 20 |
| Aloha                       |                 21 |
| El Prat                     |                 22 |
| Vivero Humanes              |                 24 |
| Fuenla City                 |                 25 |
| Top Campo                   |                 29 |
| Campohermoso                |                 31 |
| france telecom              |                 32 |
| Mus?e du Louvre             |                 33 |
| The Magic Garden            |                 37 |
+-----------------------------+--------------------+
17 rows in set (0.001 sec)

--30 Devuelve un listado que muestre solamente los empleados que no tienen una oficina asociada.
SELECT * FROM empleado WHERE codigo_oficina IS NULL;
Empty set (0.000 sec)

--31 Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado.
SELECT codigo_empleado, nombre, apellido1, apellido2, codigo_oficina
FROM empleado
WHERE codigo_empleado NOT IN (SELECT codigo_empleado_rep_ventas FROM cliente);
+-----------------+-------------+------------+-----------+----------------+
| codigo_empleado | nombre      | apellido1  | apellido2 | codigo_oficina |
+-----------------+-------------+------------+-----------+----------------+
|               1 | Marcos      | Maga?a     | Perez     | TAL-ES         |
|               2 | Ruben       | L?pez      | Martinez  | TAL-ES         |
|               3 | Alberto     | Soria      | Carrasco  | TAL-ES         |
|               4 | Maria       | Sol?s      | Jerez     | TAL-ES         |
|               6 | Juan Carlos | Ortiz      | Serrano   | TAL-ES         |
|               7 | Carlos      | Soria      | Jimenez   | MAD-ES         |
|              10 | Hilario     | Rodriguez  | Huertas   | MAD-ES         |
|              13 | David       | Palma      | Aceituno  | BCN-ES         |
|              14 | Oscar       | Palma      | Aceituno  | BCN-ES         |
|              15 | Francois    | Fignon     |           | PAR-FR         |
|              17 | Laurent     | Serra      |           | PAR-FR         |
|              20 | Hilary      | Washington |           | BOS-USA        |
|              21 | Marcus      | Paxton     |           | BOS-USA        |
|              23 | Nei         | Nishikori  |           | TOK-JP         |
|              24 | Narumi      | Riko       |           | TOK-JP         |
|              25 | Takuma      | Nomura     |           | TOK-JP         |
|              26 | Amy         | Johnson    |           | LON-UK         |
|              27 | Larry       | Westfalls  |           | LON-UK         |
|              28 | John        | Walton     |           | LON-UK         |
|              29 | Kevin       | Fallmer    |           | SYD-AU         |
+-----------------+-------------+------------+-----------+----------------+
20 rows in set (0.000 sec)

--32Devuelve un listado que muestre los empleados que no tienen una oficina asociada y los que no tienen un cliente asociado.
SELECT codigo_empleado, nombre, apellido1, apellido2, codigo_oficina
FROM empleado
WHERE codigo_empleado NOT IN (SELECT codigo_empleado_rep_ventas FROM cliente)
AND codigo_oficina IS NULL;
Empty set (0.000 sec)

--33 Devuelve un listado de los productos que nunca han aparecido en un pedido.
SELECT codigo_producto, nombre, gama, cantidad_en_stock  
FROM producto P
WHERE  codigo_producto NOT IN (SELECT codigo_producto FROM detalle_pedido);
+-----------------+-------------------------------------------------------------+--------------+-------------------+
| codigo_producto | nombre                                                      | gama         | cantidad_en_stock |
+-----------------+-------------------------------------------------------------+--------------+-------------------+
| FR-104          | Olea-Olivos                                                 | Frutales     |                50 |
| FR-14           | Calamondin Mini                                             | Frutales     |                15 |
| FR-19           | Camelia Blanco, Chrysler Rojo, Soraya Naranja,              | Frutales     |               350 |
| FR-20           | Landora Amarillo, Rose Gaujard bicolor blanco-rojo          | Frutales     |               350 |
| FR-21           | Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte | Frutales     |               350 |
| FR-24           | Albaricoquero Corbato                                       | Frutales     |               400 |
| FR-25           | Albaricoquero Moniqui                                       | Frutales     |               400 |
| FR-26           | Albaricoquero Kurrot                                        | Frutales     |               400 |
| FR-27           | Cerezo Burlat                                               | Frutales     |               400 |
| FR-28           | Cerezo Picota                                               | Frutales     |               400 |
| FR-30           | Ciruelo R. Claudia Verde                                    | Frutales     |               400 |
| FR-32           | Ciruelo Golden Japan                                        | Frutales     |               400 |
| FR-35           | Ciruelo Claudia Negra                                       | Frutales     |               400 |
| FR-38           | Higuera Verdal                                              | Frutales     |               400 |
| FR-39           | Higuera Breva                                               | Frutales     |               400 |
| FR-44           | Melocotonero Spring Crest                                   | Frutales     |               400 |
| FR-46           | Melocotonero Federica                                       | Frutales     |               400 |
| FR-49           | Parra Uva de Mesa                                           | Frutales     |               400 |
| FR-5            | Mandarino -Plant?n joven                                    | Frutales     |                15 |
| FR-50           | Peral Castell                                               | Frutales     |               400 |
| FR-51           | Peral Williams                                              | Frutales     |               400 |
| FR-52           | Peral Conference                                            | Frutales     |               400 |
| FR-55           | Olivo Cipresino                                             | Frutales     |               400 |
| FR-59           | Albaricoquero                                               | Frutales     |               200 |
| FR-61           | Albaricoquero                                               | Frutales     |               200 |
| FR-62           | Albaricoquero                                               | Frutales     |               200 |
| FR-63           | Cerezo                                                      | Frutales     |               300 |
| FR-65           | Cerezo                                                      | Frutales     |               200 |
| FR-68           | Cerezo                                                      | Frutales     |                50 |


--34 Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas
-- de algún cliente que haya realizado la compra de algún producto de la gama Frutales.
SELECT * FROM oficina 
WHERE codigo_oficina NOT IN (
    SELECT codigo_oficina FROM
     empleado 
     WHERE codigo_empleado IN (
        SELECT codigo_empleado_rep_ventas 
        FROM cliente 
        WHERE codigo_cliente IN (
            SELECT codigo_cliente 
            FROM pedido
            WHERE codigo_pedido IN (
                SELECT codigo_pedido
                FROM detalle_pedido
                WHERE codigo_producto IN (
                    SELECT codigo_producto 
                    FROM producto P
                    WHERE P.gama = 'Frutales'
                )
            )
        )
        ));
+----------------+-----------+------------+------------+---------------+-----------------+--------------------------+---------------------+
| codigo_oficina | ciudad    | pais       | region     | codigo_postal | telefono        | linea_direccion1         | linea_direccion2    |
+----------------+-----------+------------+------------+---------------+-----------------+--------------------------+---------------------+
| BCT-ES         | Barcelona | Espa?a     | Barcelona  | 08019         | +34 93 3561182  | Avenida Diagonal, 38     | 3A escalera Derecha |
| LON-UK         | Londres   | Inglaterra | EMEA       | EC2N 1HN      | +44 20 78772041 | 52 Old Broad Street      | Ground Floor        |
| PAR-FR         | Paris     | Francia    | EMEA       | 75017         | +33 14 723 4404 | 29 Rue Jouffroy d abbans |                     |
| TOK-JP         | Tokyo     | Jap?n      | Chiyoda-Ku | 102-8578      | +81 33 224 5000 | 4-1 Kioicho              |                     |
+----------------+-----------+------------+------------+---------------+-----------------+--------------------------+---------------------+
4 rows in set (0.001 sec)

--35 Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.
SELECT nombre_cliente, C.codigo_cliente FROM cliente C, pedido P
WHERE C.codigo_cliente = P.codigo_cliente
AND C.codigo_cliente NOT IN (SELECT codigo_cliente FROM pago);
+----------------+----------------+
| nombre_cliente | codigo_cliente |
+----------------+----------------+
| Flores S.L.    |             36 |
| Flores S.L.    |             36 |
| Flores S.L.    |             36 |
| Flores S.L.    |             36 |
| Flores S.L.    |             36 |
+----------------+----------------+
5 rows in set (0.001 sec)

--36 Devuelve un listado con los datos de los empleados que no tienen clientes asociados y el nombre de su jefe asociado.
SELECT DISTINCT E.nombre, E.apellido1, A.nombj "nombre Jefe", A.nombrejef "Apellido del jefe"
FROM empleado E, (
            SELECT nombre "nombj", apellido1 "nombrejef", codigo_empleado, codigo_jefe 
            FROM empleado) A
WHERE E.codigo_jefe = A.codigo_jefe
AND  A.codigo_empleado= E.codigo_empleado
AND E.codigo_empleado NOT IN (SELECT codigo_empleado_rep_ventas FROM cliente);
+-------------+------------+-------------+-------------------+
| nombre      | apellido1  | nombre Jefe | Apellido del jefe |
+-------------+------------+-------------+-------------------+
| Ruben       | L?pez      | Ruben       | L?pez             |
| Alberto     | Soria      | Alberto     | Soria             |
| Maria       | Sol?s      | Maria       | Sol?s             |
| Juan Carlos | Ortiz      | Juan Carlos | Ortiz             |
| Carlos      | Soria      | Carlos      | Soria             |
| Hilario     | Rodriguez  | Hilario     | Rodriguez         |
| David       | Palma      | David       | Palma             |
| Oscar       | Palma      | Oscar       | Palma             |
| Francois    | Fignon     | Francois    | Fignon            |
| Laurent     | Serra      | Laurent     | Serra             |
| Hilary      | Washington | Hilary      | Washington        |
| Marcus      | Paxton     | Marcus      | Paxton            |
| Nei         | Nishikori  | Nei         | Nishikori         |
| Narumi      | Riko       | Narumi      | Riko              |
| Takuma      | Nomura     | Takuma      | Nomura            |
| Amy         | Johnson    | Amy         | Johnson           |
| Larry       | Westfalls  | Larry       | Westfalls         |
| John        | Walton     | John        | Walton            |
| Kevin       | Fallmer    | Kevin       | Fallmer           |
+-------------+------------+-------------+-------------------+
19 rows in set (0.001 sec)

--37 ¿Cuántos empleados hay en la compañía?
SELECT COUNT(codigo_empleado) FROM empleado;
+------------------------+
| COUNT(codigo_empleado) |
+------------------------+
|                     31 |
+------------------------+
1 row in set (0.004 sec)

--38 ¿Cuántos clientes tiene cada país?
SELECT COUNT(*) "CLIENTES DE CADA PAIS", pais FROM cliente GROUP BY pais;
+-----------------------+----------------+
| CLIENTES DE CADA PAIS | pais           |
+-----------------------+----------------+
|                     2 | Australia      |
|                     2 | France         |
|                    27 | Spain          |
|                     1 | United Kingdom |
|                     4 | USA            |
+-----------------------+----------------+
5 rows in set (0.001 sec)

--39 ¿Cuál fue el pago medio en 2009?
+---------------+
| EL PAGO MEDIO |
+---------------+
|   4504.076923 |
+---------------+
1 row in set (0.000 sec)

--40 ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el número de pedidos.
+------------------+-----------+
| CANTIDAD ESTADOS | estado    |
+------------------+-----------+
|               61 | Entregado |
|               24 | Rechazado |
|               30 | Pendiente |
+------------------+-----------+
3 rows in set (0.000 sec)

--41 Calcula el precio de venta del producto más caro y más barato en una misma consulta.
SELECT MAX(precio_venta) "PRODUCTO MAS CARO", MIN(precio_venta) "PRODUCTO MAS BARATO" FROM producto;
+-------------------+---------------------+
| PRODUCTO MAS CARO | PRODUCTO MAS BARATO |
+-------------------+---------------------+
|            462.00 |                1.00 |
+-------------------+---------------------+
1 row in set (0.000 sec)

--42 Calcula el número de clientes que tiene la empresa.
SELECT COUNT(*) "CLIENTES EN LA EMPRESA" FROM cliente;
+------------------------+
| CLIENTES EN LA EMPRESA |
+------------------------+
|                     36 |
+------------------------+
1 row in set (0.001 sec)

--43 ¿Cuántos clientes tiene la ciudad de Madrid?
SELECT COUNT(ciudad) "CANTIDAD DE CLIENTES DE MADRID" FROM cliente WHERE ciudad = 'Madrid';
+--------------------------------+
| CANTIDAD DE CLIENTES DE MADRID |
+--------------------------------+
|                             11 |
+--------------------------------+
1 row in set (0.000 sec)

--44 ¿Calcula cuántos clientes tiene cada una de las ciudades que empiezan por M?
SELECT COUNT(*) "CLIENTES CON M" FROM cliente WHERE ciudad LIKE 'M%' GROUP BY ciudad;
+----------------+
| CLIENTES CON M |
+----------------+
|             11 |
|              2 |
|              1 |
+----------------+
3 rows in set (0.001 sec)

--45 Devuelve el nombre de los representantes de ventas y el número de clientes al que atiende cada uno.
SELECT nombre, apellido1, COUNT(*) FROM cliente C, empleado E
WHERE C.codigo_empleado_rep_ventas = E.codigo_empleado GROUP BY E.codigo_empleado;
+-----------------+------------+----------+
| nombre          | apellido1  | COUNT(*) |
+-----------------+------------+----------+
| Felipe          | Rosas      |        5 |
| Mariano         | L?pez      |        4 |
| Lucio           | Campoamor  |        2 |
| Emmanuel        | Maga?a     |        5 |
| Jos? Manuel     | Martinez   |        5 |
| Lionel          | Narvaez    |        2 |
| Michael         | Bolton     |        2 |
| Walter Santiago | Sanchez    |        2 |
| Lorena          | Paxton     |        2 |
| Julian          | Bellinelli |        5 |
| Mariko          | Kishi      |        2 |
+-----------------+------------+----------+
11 rows in set (0.001 sec)

--46 Calcula el número de clientes que no tiene asignado representante de ventas.
SELECT COUNT(*) "Clientes sin representante asignado" FROM cliente WHERE codigo_empleado_rep_ventas IS NULL;
+-------------------------------------+
| Clientes sin representante asignado |
+-------------------------------------+
|                                   0 |
+-------------------------------------+
1 row in set (0.000 sec)

--47 Calcula la fecha del primer y último pago realizado por cada uno de los clientes. 
--El listado deberá mostrar el nombre y los apellidos de cada cliente.
SELECT MAX(fecha_pago)"Ultima fecha de pago", MIN(fecha_pago) "Primer fecha de pago", nombre_cliente
FROM pago P, cliente C
WHERE C.codigo_cliente = P.codigo_cliente
GROUP BY C.codigo_cliente;
+----------------------+----------------------+--------------------------------+
| Ultima fecha de pago | Primer fecha de pago | nombre_cliente                 |
+----------------------+----------------------+--------------------------------+
| 2008-12-10           | 2008-11-10           | GoldFish Garden                |
| 2009-02-19           | 2009-01-16           | Gardening Associates           |
| 2007-01-08           | 2007-01-08           | Gerudo Valley                  |
| 2006-01-18           | 2006-01-18           | Tendo Garden                   |
| 2009-01-13           | 2009-01-13           | Beragua                        |
| 2009-01-06           | 2009-01-06           | Naturagua                      |
| 2008-08-04           | 2008-08-04           | Camunas Jardines S.L.          |
| 2008-07-15           | 2008-07-15           | Dardena S.A.                   |
| 2009-02-15           | 2009-01-15           | Jardin de Flores               |
| 2009-02-16           | 2009-02-16           | Flores Marivi                  |
| 2009-03-06           | 2009-03-06           | Golf S.A.                      |
| 2009-03-26           | 2009-03-26           | Sotogrande                     |
| 2008-03-18           | 2008-03-18           | Jardines y Mansiones Cactus SL |
| 2009-02-08           | 2009-02-08           | Jardiner?as Mat?as SL          |
| 2009-01-13           | 2009-01-13           | Agrojardin                     |
| 2009-01-16           | 2009-01-16           | Jardineria Sara                |
| 2007-10-06           | 2007-10-06           | Tutifruti S.A                  |
| 2006-05-26           | 2006-05-26           | El Jardin Viviente S.L         |
+----------------------+----------------------+--------------------------------+
18 rows in set (0.000 sec)

--48 Calcula el número de productos diferentes que hay en cada uno de los pedidos.
SELECT COUNT(*), nombre FROM producto P, (SELECT codigo_producto FROM detalle_pedido) B
WHERE P.codigo_producto = B.codigo_producto
GROUP BY P.codigo_producto;
+----------+-------------------------------------------------------------+
| COUNT(*) | nombre                                                      |
+----------+-------------------------------------------------------------+
|        7 | Sierra de Poda 400MM                                        |
|        6 | Pala                                                        |
|        7 | Rastrillo de Jard?n                                         |
|        8 | Azad?n                                                      |
|        4 | Ajedrea                                                     |
|        3 | Lav?ndula Dentata                                           |
|        2 | Mejorana                                                    |
|        3 | Melissa                                                     |
|        2 | Mentha Sativa                                               |
|        4 | Petrosilium Hortense (Peregil)                              |
|        1 | Salvia Mix                                                  |
|        2 | Thymus Citriodra (Tomillo lim?n)                            |
|        6 | Thymus Vulgaris                                             |
|        2 | Santolina Chamaecyparys                                     |
|        4 | Expositor C?tricos Mix                                      |
|        2 | Limonero 2 a?os injerto                                     |
|        4 | Nectarina                                                   |
|        2 | Nogal                                                       |
|        3 | Olea-Olivos                                                 |
|        1 | Olea-Olivos                                                 |
|        1 | Olea-Olivos                                                 |
|        2 | Peral                                                       |
|        1 | Peral                                                       |
|        4 | Peral                                                       |
|        7 | Limonero 30/40                                              |
|        2 | Kunquat                                                     |
|        1 | Kunquat  EXTRA con FRUTA                                    |
|        1 | Calamondin Copa                                             |
|        1 | Calamondin Copa EXTRA Con FRUTA                             |
|        1 | Rosal bajo 1?? -En maceta-inicio brotaci?n                  |
|        2 | ROSAL TREPADOR                                              |
|        2 | Pitimini rojo                                               |
|        2 | Rosal copa                                                  |
|        1 | Cerezo Napole?n                                             |
|        1 | Ciruelo Santa Rosa                                          |
|        2 | Ciruelo Friar                                               |

--49 Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de los pedidos.
SELECT SUM(cantidad), codigo_pedido FROM detalle_pedido GROUP BY codigo_pedido;
+---------------+---------------+
| SUM(cantidad) | codigo_pedido |
+---------------+---------------+
|           113 |             1 |
|           161 |             2 |
|           232 |             3 |
|           179 |             4 |
|            14 |             8 |
|           625 |             9 |
|            40 |            10 |
|           260 |            11 |
|           290 |            12 |
|            22 |            13 |
|            21 |            14 |
|            21 |            15 |
|            22 |            16 |
|            25 |            17 |
|            16 |            18 |
|            41 |            19 |
|            22 |            20 |
|            30 |            21 |
|             1 |            22 |

--50 Devuelve un listado de los 20 productos más vendidos y el número total de unidades que se han vendido de cada uno. 
--El listado deberá estar ordenado por el número total de unidades vendidas.
SELECT P.codigo_producto, nombre, gama, dimensiones,SUM(cantidad) 
FROM detalle_pedido DP, producto P WHERE P.codigo_producto=DP.codigo_producto
GROUP BY codigo_producto ORDER BY SUM(cantidad) DESC LIMIT 20;
+-----------------+--------------------------------------------+--------------+-------------+---------------+
| codigo_producto | nombre                                     | gama         | dimensiones | SUM(cantidad) |
+-----------------+--------------------------------------------+--------------+-------------+---------------+
| AR-009          | Thymus Vulgaris                            | Arom?ticas   | 15-20       |           961 |
| AR-008          | Thymus Citriodra (Tomillo lim?n)           | Arom?ticas   | 15-20       |           455 |
| FR-17           | Rosal bajo 1?? -En maceta-inicio brotaci?n | Frutales     |             |           423 |
| AR-006          | Petrosilium Hortense (Peregil)             | Arom?ticas   | 15-20       |           291 |
| FR-67           | Cerezo                                     | Frutales     | 16/18       |           285 |
| OR-247          | Trachycarpus Fortunei                      | Ornamentales | 250-300     |           279 |
| OR-157          | Acer Pseudoplatanus                        | Ornamentales | 200-225     |           262 |
| OR-227          | Chamaerops Humilis                         | Ornamentales | 130 - 150   |           236 |
| OR-208          | Tuja orientalis "Aurea nana"               | Ornamentales | 20-30       |           221 |
| 30310           | Azad?n                                     | Herramientas | 0,168       |           220 |
| OR-214          | Brahea Armata                              | Ornamentales | 45 - 60     |           212 |
| FR-57           | Kaki Rojo Brillante                        | Frutales     |             |           203 |
| OR-177          | Robinia Pseudoacacia Casque Rouge          | Ornamentales | 200-225     |           150 |
| AR-001          | Ajedrea                                    | Arom?ticas   | 15-20       |           135 |
| FR-11           | Limonero 30/40                             | Frutales     |             |           131 |
| AR-002          | Lav?ndula Dentata                          | Arom?ticas   | 15-20       |           128 |
| OR-136          | Nerium oleander ARBOL Calibre 8/10         | Ornamentales | 225-250     |           127 |
| FR-29           | Cerezo Napole?n                            | Frutales     |             |           120 |
| FR-48           | Nogal Com?n                                | Frutales     |             |           120 |
| FR-100          | Nectarina                                  | Frutales     | 8/10        |           114 |
+-----------------+--------------------------------------------+--------------+-------------+---------------+
20 rows in set (0.001 sec)

--55 Devuelve el nombre del cliente con mayor límite de crédito.
SELECT MAX(limite_credito), nombre_cliente FROM cliente; 
+---------------------+-----------------+
| MAX(limite_credito) | nombre_cliente  |
+---------------------+-----------------+
|           600000.00 | GoldFish Garden |
+---------------------+-----------------+
1 row in set (0.000 sec)

--56 Devuelve el nombre del producto que tenga el precio de venta más caro.
SELECT MAX(precio_venta) "Precio del producto más caro", nombre FROM producto;
+------------------------------+----------------------+
| Precio del producto m?s caro | nombre               |
+------------------------------+----------------------+
|                       462.00 | Sierra de Poda 400MM |
+------------------------------+----------------------+
1 row in set (0.000 sec)

--57 Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta que tendrá que calcular cuál es el
--número total de unidades que se han vendido de cada producto a partir de los datos de la tabla detalle_pedido. 
--Una vez que sepa cuál es el código del producto, puede obtener su nombre fácilmente.)
SELECT nombre FROM producto P INNER JOIN (SELECT codigo_producto, SUM(precio_unidad) "todo junto" FROM detalle_pedido DP GROUP BY codigo_producto) A
ON P.codigo_producto = A.codigo_producto;
+-------------------------------------------------------------+
| nombre                                                      |
+-------------------------------------------------------------+
| Sierra de Poda 400MM                                        |
| Pala                                                        |
| Rastrillo de Jard?n                                         |
| Azad?n                                                      |
| Ajedrea                                                     |
| Lav?ndula Dentata                                           |
| Mejorana                                                    |
| Melissa                                                     |
| Mentha Sativa                                               |
| Petrosilium Hortense (Peregil)                              |
| Salvia Mix                                                  |
| Thymus Citriodra (Tomillo lim?n)                            |
| Thymus Vulgaris                                             |
| Santolina Chamaecyparys                                     |
| Expositor C?tricos Mix                                      |
| Limonero 2 a?os injerto                                     |

--58 Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin utilizar INNER JOIN).
SELECT nombre_cliente, limite_credito, P.ma "MAYOR PAGO"FROM cliente C, (SELECT MAX(total) AS ma, codigo_cliente FROM pago GROUP BY codigo_cliente) P
WHERE C.codigo_cliente = P.codigo_cliente
AND C.limite_credito > P.ma; 
+--------------------------------+----------------+------------+
| nombre_cliente                 | limite_credito | MAYOR PAGO |
+--------------------------------+----------------+------------+
| GoldFish Garden                |        3000.00 |    2000.00 |
| Gardening Associates           |        6000.00 |    5000.00 |
| Tendo Garden                   |      600000.00 |   23794.00 |
| Beragua                        |       20000.00 |    2390.00 |
| Naturagua                      |       32000.00 |     929.00 |
| Camunas Jardines S.L.          |       16481.00 |    2246.00 |
| Dardena S.A.                   |      321000.00 |    4160.00 |
| Jardin de Flores               |       40000.00 |   10000.00 |
| Golf S.A.                      |       30000.00 |     232.00 |
| Sotogrande                     |       60000.00 |     272.00 |
| Jardines y Mansiones Cactus SL |       76000.00 |   18846.00 |
| Jardiner?as Mat?as SL          |      100500.00 |   10972.00 |
| Tutifruti S.A                  |       10000.00 |    3321.00 |
| El Jardin Viviente S.L         |        8000.00 |    1171.00 |
+--------------------------------+----------------+------------+
14 rows in set (0.001 sec)

--59 Devuelve el producto que más unidades tiene en stock.
SELECT MAX(cantidad_en_stock), codigo_producto, nombre FROM producto;
+------------------------+-----------------+----------------------+
| MAX(cantidad_en_stock) | codigo_producto | nombre               |
+------------------------+-----------------+----------------------+
|                    400 | 11679           | Sierra de Poda 400MM |
+------------------------+-----------------+----------------------+
1 row in set (0.000 sec)

--60 Devuelve el producto que menos unidades tiene en stock.
SELECT MIN(cantidad_en_stock), codigo_producto, nombre FROM producto;
+------------------------+-----------------+----------------------+
| MIN(cantidad_en_stock) | codigo_producto | nombre               |
+------------------------+-----------------+----------------------+
|                      0 | 11679           | Sierra de Poda 400MM |
+------------------------+-----------------+----------------------+
1 row in set (0.000 sec)

--61 Listar los nombres de los clientes que tienen asignado el representante Lorena Pauxton (suponiendo que no pueden haber representantes con el mismo nombre).
SELECT nombre_cliente, codigo_empleado_rep_ventas FROM cliente C, (SELECT nombre, apellido1, codigo_empleado FROM empleado) E
WHERE E.codigo_empleado = C.codigo_empleado_rep_ventas
AND  E.nombre = 'Lorena' AND E.apellido1 = 'Pauxton';
Empty set (0.000 sec)

--80 Devuelve un listado de los productos que nunca han aparecido en un pedido. (Utilizar EXISTS y NOT EXISTS)
SELECT codigo_producto, nombre FROM producto 
WHERE NOT EXISTS (SELECT codigo_producto FROM pedido);
Empty set (0.001 sec)

--81 Devuelve un listado de los productos que han aparecido en un pedido alguna vez. (Utilizar EXISTS y NOT EXISTS)
SELECT DISTINCT codigo_producto, nombre FROM producto 
WHERE EXISTS (SELECT 1 codigo_producto FROM pedido);
+-----------------+-------------------------------------------------------------+
| codigo_producto | nombre                                                      |
+-----------------+-------------------------------------------------------------+
| 11679           | Sierra de Poda 400MM                                        |
| 21636           | Pala                                                        |
| 22225           | Rastrillo de Jard?n                                         |
| 30310           | Azad?n                                                      |
| AR-001          | Ajedrea                                                     |
| AR-002          | Lav?ndula Dentata                                           |
| AR-003          | Mejorana                                                    |
| AR-004          | Melissa                                                     |
| AR-005          | Mentha Sativa                                               |
| AR-006          | Petrosilium Hortense (Peregil)                              |
| AR-007          | Salvia Mix                                                  |
| AR-008          | Thymus Citriodra (Tomillo lim?n)                            |
| AR-009          | Thymus Vulgaris                                             |
| AR-010          | Santolina Chamaecyparys                                     |
| FR-1            | Expositor C?tricos Mix                                      |
| FR-10           | Limonero 2 a?os injerto                                     |
| FR-100          | Nectarina                                                   |
| FR-101          | Nogal                                                       |
| FR-102          | Olea-Olivos                                                 |
| FR-103          | Olea-Olivos                                                 |
| FR-104          | Olea-Olivos                                                 |
| FR-105          | Olea-Olivos                                                 |
| FR-106          | Peral                                                       |

--82 Devuelve el listado de clientes indicando el nombre del cliente y cuántos pedidos ha realizado.
--Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido.
SELECT nombre_cliente, COUNT(*) FROM cliente C LEFT JOIN pedido P
ON P.codigo_cliente =C.codigo_cliente GROUP BY P.codigo_cliente;
+--------------------------------+----------+
| nombre_cliente                 | COUNT(*) |
+--------------------------------+----------+
| Lasas S.A.                     |       17 |
| GoldFish Garden                |       11 |
| Gardening Associates           |        9 |
| Gerudo Valley                  |        5 |
| Tendo Garden                   |        5 |
| Beragua                        |        5 |
| Naturagua                      |        5 |
| Camunas Jardines S.L.          |        5 |
| Dardena S.A.                   |        5 |
| Jardin de Flores               |        5 |
| Flores Marivi                  |       10 |
| Golf S.A.                      |        5 |
| Sotogrande                     |        5 |
| Jardines y Mansiones Cactus SL |        5 |
| Jardiner?as Mat?as SL          |        5 |
| Agrojardin                     |        5 |
| Jardineria Sara                |       10 |
| Tutifruti S.A                  |        5 |
| Flores S.L.                    |        5 |
| El Jardin Viviente S.L         |        5 |
+--------------------------------+----------+
20 rows in set (0.001 sec)

--83 Devuelve un listado con los nombres de los clientes y el total pagado por cada uno de ellos. 
--Tenga en cuenta que pueden existir clientes que no han realizado ningún pago.
SELECT nombre_cliente, SUM(total) FROM cliente C LEFT JOIN pago P
ON P.codigo_cliente =C.codigo_cliente GROUP BY P.codigo_cliente, P.total;
+--------------------------------+------------+
| nombre_cliente                 | SUM(total) |
+--------------------------------+------------+
| Lasas S.A.                     |       NULL |
| GoldFish Garden                |    4000.00 |
| Gardening Associates           |     926.00 |
| Gardening Associates           |   10000.00 |
| Gerudo Valley                  |    1849.00 |
| Gerudo Valley                  |   80000.00 |
| Tendo Garden                   |   23794.00 |
| Beragua                        |    2390.00 |
| Naturagua                      |     929.00 |
| Camunas Jardines S.L.          |    2246.00 |
| Dardena S.A.                   |    4160.00 |
| Jardin de Flores               |    2081.00 |
| Jardin de Flores               |   10000.00 |
| Flores Marivi                  |    4399.00 |
| Golf S.A.                      |     232.00 |
| Sotogrande                     |     272.00 |
| Jardines y Mansiones Cactus SL |   18846.00 |
| Jardiner?as Mat?as SL          |   10972.00 |
| Agrojardin                     |    8489.00 |
| Jardineria Sara                |    7863.00 |
| Tutifruti S.A                  |    3321.00 |
| El Jardin Viviente S.L         |    1171.00 |
+--------------------------------+------------+
22 rows in set (0.001 sec)

--84 Devuelve el nombre de los clientes que hayan hecho pedidos en 2008 ordenados alfabéticamente de menor a mayor.
SELECT nombre_cliente, fecha_entrega FROM cliente C, pedido P
WHERE YEAR(fecha_entrega) = 2008 ORDER BY nombre ASC;
+--------------------------------+---------------+
| nombre_cliente                 | fecha_entrega |
+--------------------------------+---------------+
| Agrojardin                     | 2008-03-30    |
| Agrojardin                     | 2008-11-09    |
| Agrojardin                     | 2008-09-01    |
| Agrojardin                     | 2008-12-17    |
| Agrojardin                     | 2008-12-10    |
| Agrojardin                     | 2008-03-29    |
| Agrojardin                     | 2008-11-14    |
| Agrojardin                     | 2008-08-01    |
| Agrojardin                     | 2008-11-14    |
| Agrojardin                     | 2008-08-31    |
| Agrojardin                     | 2008-01-19    |
| Agrojardin                     | 2008-04-13    |
| Agrojardin                     | 2008-07-30    |
| Agrojardin                     | 2008-12-28    |
| Agrojardin                     | 2008-12-29    |
| Agrojardin                     | 2008-12-28    |
| Agrojardin                     | 2008-10-04    |
| Agrojardin                     | 2008-11-25    |
| Agrojardin                     | 2008-10-14    |
| Agrojardin                     | 2008-07-25    |
| Agrojardin                     | 2008-11-23    |
| Agrojardin                     | 2008-06-28    |
| Aloha                          | 2008-11-25    |
| Aloha                          | 2008-10-14    |
| Aloha                          | 2008-07-25    |
| Aloha                          | 2008-11-23    |
| Aloha                          | 2008-06-28    |
| Aloha                          | 2008-03-30    |
| Aloha                          | 2008-11-09    |
| Aloha                          | 2008-09-01    |
| Aloha                          | 2008-12-17    |
| Aloha                          | 2008-12-10    |

--85 Devuelve el nombre del cliente, el nombre y primer apellido de su representante de ventas y el número de teléfono
--de la oficina del representante de ventas, de aquellos clientes que no hayan realizado ningún pago.
SELECT nombre_cliente, E.nombre, E.apellido1, O.telefono FROM cliente C, empleado E, oficina O
WHERE C.codigo_cliente NOT IN (SELECT codigo_cliente FROM pago)
AND E.codigo_empleado = C.codigo_empleado_rep_ventas
AND E.codigo_oficina = O.codigo_oficina;
+-----------------------------+-------------+------------+-----------------+
| nombre_cliente              | nombre      | apellido1  | telefono        |
+-----------------------------+-------------+------------+-----------------+
| Club Golf Puerta del hierro | Emmanuel    | Maga?a     | +34 93 3561182  |
| DaraDistribuciones          | Emmanuel    | Maga?a     | +34 93 3561182  |
| Madrile?a de riegos         | Emmanuel    | Maga?a     | +34 93 3561182  |
| Americh Golf Management SL  | Jos? Manuel | Martinez   | +34 93 3561182  |
| Aloha                       | Jos? Manuel | Martinez   | +34 93 3561182  |
| El Prat                     | Jos? Manuel | Martinez   | +34 93 3561182  |
| Lasas S.A.                  | Mariano     | L?pez      | +34 91 7514487  |
| Lasas S.A.                  | Mariano     | L?pez      | +34 91 7514487  |
| france telecom              | Lionel      | Narvaez    | +33 14 723 4404 |
| Mus?e du Louvre             | Lionel      | Narvaez    | +33 14 723 4404 |
| Flores S.L.                 | Michael     | Bolton     | +1 650 219 4782 |
| The Magic Garden            | Michael     | Bolton     | +1 650 219 4782 |
| Naturajardin                | Julian      | Bellinelli | +61 2 9264 2451 |
| Vivero Humanes              | Julian      | Bellinelli | +61 2 9264 2451 |
| Campohermoso                | Julian      | Bellinelli | +61 2 9264 2451 |
| Flowers, S.A                | Felipe      | Rosas      | +34 925 867231  |
| Fuenla City                 | Felipe      | Rosas      | +34 925 867231  |
| Top Campo                   | Felipe      | Rosas      | +34 925 867231  |
+-----------------------------+-------------+------------+-----------------+
18 rows in set (0.001 sec)

--86 Devuelve el listado de clientes donde aparezca el nombre del cliente, el nombre y primer apellido de su
--representante de ventas y la ciudad donde está su oficina.
SELECT nombre_cliente, E.nombre, E.apellido1, O.linea_direccion1 FROM cliente C, empleado E, oficina O
WHERE C.codigo_empleado_rep_ventas = E.codigo_empleado
AND E.codigo_oficina = O.codigo_oficina;
+--------------------------------+-----------------+------------+------------------------------+
| nombre_cliente                 | nombre          | apellido1  | linea_direccion1             |
+--------------------------------+-----------------+------------+------------------------------+
| Beragua                        | Emmanuel        | Maga?a     | Avenida Diagonal, 38         |
| Club Golf Puerta del hierro    | Emmanuel        | Maga?a     | Avenida Diagonal, 38         |
| Naturagua                      | Emmanuel        | Maga?a     | Avenida Diagonal, 38         |
| DaraDistribuciones             | Emmanuel        | Maga?a     | Avenida Diagonal, 38         |
| Madrile?a de riegos            | Emmanuel        | Maga?a     | Avenida Diagonal, 38         |
| Golf S.A.                      | Jos? Manuel     | Martinez   | Avenida Diagonal, 38         |
| Americh Golf Management SL     | Jos? Manuel     | Martinez   | Avenida Diagonal, 38         |
| Aloha                          | Jos? Manuel     | Martinez   | Avenida Diagonal, 38         |
| El Prat                        | Jos? Manuel     | Martinez   | Avenida Diagonal, 38         |
| Sotogrande                     | Jos? Manuel     | Martinez   | Avenida Diagonal, 38         |
| Gerudo Valley                  | Lorena          | Paxton     | 1550 Court Place             |
| Tendo Garden                   | Lorena          | Paxton     | 1550 Court Place             |
| Lasas S.A.                     | Mariano         | L?pez      | Bulevar Indalecio Prieto, 32 |
| Lasas S.A.                     | Mariano         | L?pez      | Bulevar Indalecio Prieto, 32 |
| Camunas Jardines S.L.          | Mariano         | L?pez      | Bulevar Indalecio Prieto, 32 |
| Dardena S.A.                   | Mariano         | L?pez      | Bulevar Indalecio Prieto, 32 |
| Jardines y Mansiones Cactus SL | Lucio           | Campoamor  | Bulevar Indalecio Prieto, 32 |
| Jardiner?as Mat?as SL          | Lucio           | Campoamor  | Bulevar Indalecio Prieto, 32 |
| france telecom                 | Lionel          | Narvaez    | 29 Rue Jouffroy d'abbans     |
| Mus?e du Louvre                | Lionel          | Narvaez    | 29 Rue Jouffroy d'abbans     |
| Flores S.L.                    | Michael         | Bolton     | 100 Market Street            |
| The Magic Garden               | Michael         | Bolton     | 100 Market Street            |
| GoldFish Garden                | Walter Santiago | Sanchez    | 100 Market Street            |
| Gardening Associates           | Walter Santiago | Sanchez    | 100 Market Street            |
| Jardin de Flores               | Julian          | Bellinelli | 5-11 Wentworth Avenue        |
| Naturajardin                   | Julian          | Bellinelli | 5-11 Wentworth Avenue        |
| Vivero Humanes                 | Julian          | Bellinelli | 5-11 Wentworth Avenue        |
| Agrojardin                     | Julian          | Bellinelli | 5-11 Wentworth Avenue        |
| Campohermoso                   | Julian          | Bellinelli | 5-11 Wentworth Avenue        |
| Tutifruti S.A                  | Mariko          | Kishi      | 5-11 Wentworth Avenue        |
| El Jardin Viviente S.L         | Mariko          | Kishi      | 5-11 Wentworth Avenue        |
| Flores Marivi                  | Felipe          | Rosas      | Francisco Aguirre, 32        |
| Flowers, S.A                   | Felipe          | Rosas      | Francisco Aguirre, 32        |
| Fuenla City                    | Felipe          | Rosas      | Francisco Aguirre, 32        |
| Top Campo                      | Felipe          | Rosas      | Francisco Aguirre, 32        |
| Jardineria Sara                | Felipe          | Rosas      | Francisco Aguirre, 32        |
+--------------------------------+-----------------+------------+------------------------------+
36 rows in set (0.001 sec)

--87 Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante 
--de ventas de ningún cliente.
SELECT nombre, apellido1, apellido2, puesto, O.telefono FROM empleado E JOIN oficina O
ON E.codigo_oficina = O.codigo_oficina
WHERE codigo_empleado NOT IN (SELECT codigo_empleado_rep_ventas FROM cliente);
+-------------+------------+-----------+-----------------------+-----------------+
| nombre      | apellido1  | apellido2 | puesto                | telefono        |
+-------------+------------+-----------+-----------------------+-----------------+
| David       | Palma      | Aceituno  | Representante Ventas  | +34 93 3561182  |
| Oscar       | Palma      | Aceituno  | Representante Ventas  | +34 93 3561182  |
| Hilary      | Washington |           | Director Oficina      | +1 215 837 0825 |
| Marcus      | Paxton     |           | Representante Ventas  | +1 215 837 0825 |
| Amy         | Johnson    |           | Director Oficina      | +44 20 78772041 |
| Larry       | Westfalls  |           | Representante Ventas  | +44 20 78772041 |
| John        | Walton     |           | Representante Ventas  | +44 20 78772041 |
| Carlos      | Soria      | Jimenez   | Director Oficina      | +34 91 7514487  |
| Hilario     | Rodriguez  | Huertas   | Representante Ventas  | +34 91 7514487  |
| Francois    | Fignon     |           | Director Oficina      | +33 14 723 4404 |
| Laurent     | Serra      |           | Representante Ventas  | +33 14 723 4404 |
| Kevin       | Fallmer    |           | Director Oficina      | +61 2 9264 2451 |
| Marcos      | Maga?a     | Perez     | Director General      | +34 925 867231  |
| Ruben       | L?pez      | Martinez  | Subdirector Marketing | +34 925 867231  |
| Alberto     | Soria      | Carrasco  | Subdirector Ventas    | +34 925 867231  |
| Maria       | Sol?s      | Jerez     | Secretaria            | +34 925 867231  |
| Juan Carlos | Ortiz      | Serrano   | Representante Ventas  | +34 925 867231  |
| Nei         | Nishikori  |           | Director Oficina      | +81 33 224 5000 |
| Narumi      | Riko       |           | Representante Ventas  | +81 33 224 5000 |
| Takuma      | Nomura     |           | Representante Ventas  | +81 33 224 5000 |
+-------------+------------+-----------+-----------------------+-----------------+
20 rows in set (0.001 sec)

--88 Devuelve un listado indicando todas las ciudades donde hay oficinas y el número de empleados que tiene.
SELECT ciudad, codigo_oficina, pene "Catidad de empleados" FROM oficina O, (SELECT COUNT(*) AS "pene" FROM empleado GROUP BY codigo_oficina)