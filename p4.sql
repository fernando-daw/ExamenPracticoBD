/*Realiza el diseño físico de

Recuerdos(idFoto, idPersona, nombre, dni, títuloFoto, fecha,monumento, ciudad, antigüedadMonumento). Recuerda que tiene que estar normalizado.*/

CREATE TABLE Recuerdos (
    id serial PRIMARY KEY,
  idFoto INTEGER PRIMARY KEY,
  idPersona INTEGER NOT NULL,
  dni VARCHAR(15) NOT NULL,
  tituloFoto VARCHAR(50) NOT NULL,
  fecha DATE NOT NULL,
  monumento VARCHAR(50) NOT NULL,
  ciudad VARCHAR(50) NOT NULL,\
  foreign key (idFoto) references foto(id), /*cojo  el idfoto de la tabla Recuerdos y lo referencio con la tabla foto*/
  foreign key (idPersona) references personas(id), /*cojo  el idPersona de la tabla Recuerdos y lo referencio con la tabla personas*/
  foreign key (monumento) references monumento(id),/*cojo  el monumento de la tabla Recuerdos y lo referencio con la tabla monumento*/
);

CREATE TABLE  foto(
id serial PRIMARY KEY,
titulo VARCHAR(150)
);
CREATE TABLE monumento(
    id serial PRIMARY KEY,
    nombre VARCHAR(50)
    antiguedadMonumento INTEGER NOT NULL  /*lo pongo como INTEGER porque no entiendo si por "antiguedad del monumento" se refiere a una fecha o a la edad del propio monumento*/
);
CREATE TABLE personas(
    id serial PRIMARY KEY,
    nombre VARCHAR(50)
);
