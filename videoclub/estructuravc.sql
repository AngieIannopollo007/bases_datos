create database videoclub;
use videoclub;

create table Clientes(
    id_cli int unique auto_increment,
    dni1 varchar(10) not null unique,
    nombre varchar(15) not null,
    apellido varchar(20) not null,
    direccion varchar(15) not null,
    numero varchar(6) not null,
    telefono varchar(15) not null,
    constraint primary key (id_cli) 
);
create table Genero(
    id_gen int unique auto_increment,
    importe int not null,
    genero varchar(15) not null,
    constraint pk_cgen primary key (id_gen)
);
create table Peliculas(
    id_p int unique auto_increment,
    id_gen1 int,
    titulo varchar(30) not null,
    director varchar(30) not null,
    reparto varchar(50) not null,
    duracion time not null,
    f_estreno date not null,
    constraint Foreign key (id_gen1) references Genero (id_gen),
    constraint primary key (id_p)
);
create table Copias(
    id_cop int unique auto_increment,
    id_p1 int,
    cantidad int not null,
    titulo varchar(30) not null,
    constraint primary key (id_cop) 
);
create table Distribuidora(
    id_dis int unique auto_increment,
    nombre varchar(15),
    direccion varchar(15),
    urls varchar(30),
    constraint primary key (id_dis)
);
create table Alquiler(
    id_alq int unique auto_increment,
    id_cli1 int,
    id_cop1 int,
    fecha_alq date not null,
    fecha_limite date not null,
    fecha_dev date,
    importe_total int,
    Foreign key (id_cli1) references Clientes(id_cli),
    Foreign key (id_cop1) references Copias(id_cop)
);