* VISTAS
1) Crear una vista que muestre la información de los profesores del Dpto nº 21. (definirla haciendo uso de la
cláusula de control de integridad)
2) Insertar utilizando la vista anterior, un nuevo profesor asignándole el Dpto nº 22
3) Crear una función que devuelva el importe de la matrícula. Se indicará el precio/crédito como parámetro,
será el mismo para todas las asignaturas $ 100
4) Crear una vista que muestre los alumnos matriculados con el importe de su matrícula haciendo uso de la
función definida anteriormente. El precio del crédito será 10
5) Actualice el nombre del alumno correspondiente a la matrícula 1 a través de la vista recién creada
6) Crear una vista que muestre el nombre y apellido de los alumnos matriculados en cada asignatura-grupo.
DISPARADORES
1) Se ha de comprobar que el profesor que dirige un departamento es un miembro de éste
2) Se ha de comprobar que el aula que se asigne a una asignatura debe tener capacidad para el grupo
3) En la asignación de aulas a grupos de asignaturas, verificar que para el mismo día y aula, no se solapen las
horas. Se considera asignación hora a hora
4) Verificar que no se matricule un alumno en el mismo año de la misma asignatura en grupos distintos.*/

DROP DATABASE IF EXISTS INSTITUTO;
CREATE DATABASE INSTITUTO;
USE INSTITUTO;

CREATE TABLE Alumno(
CodAlum INT PRIMARY KEY,
Nombre VARCHAR(20),
Apellido VARCHAR(20),
DNI INT,
Apellido2 VARCHAR(20)
);

CREATE TABLE Depto(
CodDepto INT PRIMARY KEY,
Nombre VARCHAR(20),
CodProfDirije INT
);

CREATE TABLE Profesor(
NumPersonal INT PRIMARY KEY,
Nombre VARCHAR(20),
Apellido VARCHAR(20),
CodDepto INT,
FOREIGN KEY (CodDepto) REFERENCES Depto(CodDepto)
);

CREATE TABLE Asignatura(
CodAsig INT PRIMARY KEY,
Nombre VARCHAR(20),
Creditos DECIMAL(4,2),
Caracter VARCHAR(20),
Curso INT
);

CREATE TABLE Aula(
CodAula INT PRIMARY KEY,
Capacidad INT
);

CREATE TABLE Grupo(
CodGrupo VARCHAR(1),
CodProf INT,
Max_Alum INT,
CodAsig INT,
FOREIGN KEY (CodProf) REFERENCES Profesor (NumPersonal),
FOREIGN KEY (CodAsig) REFERENCES Asignatura(CodAsig),
PRIMARY KEY(CodGrupo, CodAsig)
);

CREATE TABLE Clase(
CodAsig INT,
CodGrupo VARCHAR(1),
CodAula INT,
Hora TIME,
Dia VARCHAR(20),
FOREIGN KEY (CodAsig) REFERENCES Asignatura(CodAsig),
FOREIGN KEY (CodGrupo) REFERENCES Grupo(CodGrupo),
FOREIGN KEY (CodAula) REFERENCES Aula(CodAula)
);

CREATE TABLE Matricula(
CodMat INT PRIMARY KEY,
CursoAcad VARCHAR(20),
CodAlum INT,
FOREIGN KEY (CodAlum) REFERENCES Alumno(CodAlum)
);

CREATE TABLE Detalle_Matricula(
CodMat INT,
CodAsig INT,
CodGrupo CHAR(1),
Convocatoria INT,
Calificacion DECIMAL(4,2),
FOREIGN KEY (CodMat) REFERENCES Matricula(CodMat),
FOREIGN KEY (CodAsig) REFERENCES Asignatura(CodAsig),
FOREIGN KEY (CodGrupo) REFERENCES Grupo(CodGrupo)
);

INSERT INTO Depto VALUES
(21, 'Matemática, Estadística y Computación', 1111),
(22, 'Matemática Aplicada', 1133),
(25, 'Arquitectura de ordenadores', NULL);

INSERT INTO Profesor VALUES
(1111, 'Monica', 'Alonso', 21),
(1122, 'Jesus', 'López', 21),
(1133, 'Rubén', 'García', 22),
(1212, 'María', 'San Benito', 25);

INSERT INTO Asignatura VALUES
(678, 'Programacion I', 7.0, 'TR', 1),
(890, 'Bases de Datos', 9.0, 'TR', 2),
(901, 'Practicas de programacion', 7.0, 'OB', 1),
(921, 'Algoritmia', 6.0, 'OP', 1);

INSERT INTO Aula VALUES
(1, 50),
(2, 25),
(11, 150),
(12, 25);

INSERT INTO Grupo VALUES
('A', 1133, 75, 678),
('A', 1111, 50, 890),
('B', 1111, 50, 890),
('A', 1122, 50, 901),
('A', 1111, 20, 921);

INSERT INTO Clase VALUES
(890, 'A', 1, 08.30, NULL),
(890, 'A', 1, 08.30, NULL),
(890, 'A', 1, 08.30, NULL),
(921, 'A', 11, 10.30, NULL),
(901, 'A', 11, 09.00, NULL);

INSERT INTO Alumno VALUES
(1, 'Marta', 'Zorrilla', 123456, NULL),
(2, 'Pedro', 'Perez', 876543, NULL),
(3, 'Maria', 'Gil', 121212, NULL),
(4, 'Rosa', 'Martin', 345612, NULL);

INSERT INTO Matricula VALUES
(1, '06-07', 1),
(2, '06-07', 2);

INSERT INTO Detalle_Matricula VALUES
(1, 678, 'A', 1, 2.0),
(1, 678, 'A', 2, 6.0),
(1, 890, 'A', 1, 8.0),
(1, 890, 'A', 2, NULL),
(2, 890, 'B', 1, 7.0),
(2, 890, 'B', 2, NULL),
(2, 921, 'A', 1, 3.0),
(2, 921, 'A', 2, NULL);