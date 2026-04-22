insert into Clientes values
(1, "26234567", "Carlos", "Gardel", "Caracas", "5340", "1144937342"),
(2, "26345678", "Carlos", "Garcia", "Camarones", "5660", "1127658902"),
(3, "36783456", "Morena", "Rial", "Bermudez", "2651", "1145669569"),
(4, "67656463", "Javier", "Milei", "Bynon", "6828", "1165344356"),
(5, "67656464", "Cristina", "Kirchner", "Bynon", "6828", "1165344356");

insert into Genero values
(1, 1500, 'Acción'),
(2, 1300, 'Comedia'),
(3, 1600, 'Drama'),
(4, 1400, 'Terror'),
(5, 1700, 'Ciencia Ficción');

insert into Peliculas values
(1, 3, 'Okupas', 'Bruno Stagnaro', 'Rodrigo de la Serna, Ariel Staltari', '00:50:00', '2000-10-18'),
(2, 2, 'Casados con Hijos', 'Claudio Ferraro', 'Guillermo Francella, Florencia Peña', '00:30:00', '2005-04-12'),
(3, 3, 'Nueve Reinas', 'Fabián Bielinsky', 'Ricardo Darín, Gastón Pauls', '01:54:00', '2000-08-31'),
(4, 1, 'El Robo del Siglo', 'Ariel Winograd', 'Guillermo Francella, Diego Peretti', '01:54:00', '2020-01-16'),
(5, 2, 'Relatos Salvajes', 'Damián Szifron', 'Ricardo Darín, Érica Rivas', '02:02:00', '2014-08-21');

insert into Copias values
(1, 1, 5, 'Okupas'),
(2, 2, 3, 'Casados con Hijos'),
(3, 3, 2, 'Nueve Reinas'),
(4, 4, 4, 'El Robo del Siglo'),
(5, 5, 6, 'Relatos Salvajes');

insert into Distribuidora values
(1, 'Universal', 'Calle Falsa 123', 'www.universal.com'),
(2, 'Sony', 'Av. Siempre Viva 742', 'www.sony.com'),
(3, 'Warner', 'Av. Corrientes 456', 'www.warnerbros.com'),
(4, 'INCAA', 'Av. Belgrano 1342', 'www.incaa.gob.ar'),
(5, 'Patagonik', 'Maipú 1234', 'www.patagonik.com.ar');

insert into Alquiler values
(1, 1, 1, '2025-04-01', '2025-04-08', '2025-04-06', 1600),
(2, 2, 3, '2025-04-02', '2025-04-09', null, 1600),
(3, 3, 2, '2025-04-03', '2025-04-10', '2025-04-10', 1300),
(4, 4, 4, '2025-04-04', '2025-04-11', null, 1500),
(5, 5, 5, '2025-04-05', '2025-04-12', null, 1700);