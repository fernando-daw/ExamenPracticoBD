CREATE DATABASE ejemplo;
CREATE SCHEMA esq1;

CREATE TABLE esq1.tabla1 (nombre VARCHAR(50), dni VARCHAR(20))
CREATE TABLE esq1.tabla2 (id_pedido INTEGER NOT NULL, foreign key (dni) references esq1.tabla1 (dni) )

ALTER TABLE esq1.tabla1 add column edad INTEGER CHECK (edad>0 and edad <99); /*creo la tabla con la edad restringida entre 0 y 99*/
ALTER TABLE esq1.tabla1 add column precio numeric (4,4); /*para crear la columna con la precision indicada*/