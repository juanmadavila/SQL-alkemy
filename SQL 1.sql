CREATE TABLE curso (
codigo int NOT NULL,
nombre VARCHAR(45) NOT NULL,
descripcion varchar(60),
turno varchar(45) NOT NULL,
PRIMARY KEY (codigo)
);

alter table curso add cupo int;

insert into curso (codigo, nombre, descripcion, turno, cupo)
VALUES (101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35);

insert into curso (codigo, nombre, descripcion, turno, cupo)
VALUES (102, 'Matemática Discreta','','Tarde',30);

INSERT INto curso (nombre) VALUES ('');

insert into curso (codigo, nombre, descripcion, turno, cupo)
VALUES (101, 'SQL','','Mañana',35);

UPDATE curso SET cupo = 25;

delete from curso WHERE nombre like 'Algoritmos';

SELECT * FROM curso;
