/*Realiza el diseño físico de

Matricula (dni, nombres, apellidos, asignatura). Recuerda que tiene que estar normalizado.*/


CREATE TABLE Matricula (
dni VARCHAR(8) PRIMARY KEY,
  nombres VARCHAR(50) NOT NULL,
  apellidos VARCHAR(50) NOT NULL,
  asignaturaid INTEGER NOT NULL
  foreign key (asignaturaid) references asignatura(id)
);
CREATE TABLE asignatura(
  id serial PRIMARY KEY,
  nombre VARCHAR(50)
);
