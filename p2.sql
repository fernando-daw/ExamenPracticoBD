Dime un ejemplo de inserción de datos en acs_objects que tenga algunos campos:

object_id		integer not null
				constraint acs_objects_object_id_pk primary key,
 title			varchar(1000) default null,
 last_modified		timestamptz default current_timestamp not null,



Dime un ejemplo de inserción de datos en acs_objects que tenga todos los campos de la tabla:
insert into acs_objects (
 (object_id, ancestor_id, n_generations)
  values
   (new.object_id, new.object_id, 0);

);

Cómo harías para actualizar "title" a "Ejemplo de título" para los object_id mayores de 100:

UPDATE acs_objects SET title = 'Ejemplo de título' WHERE id >100;

Cómo harías para borrar los registros modificados (modifying_ip) desde la IP 200.200.200.200:
/*Se trata de una red local y entiendo que se trata de una tabla,
de modo que para borrar los registros de la tabla podemos actuar de 2 formas: Borrar los datos de 1 en 1, o borrar la tabla completa y creando
de nuevo la tabla pero vacia*/
DROP TABLE modifying_ip;
/*Ejecutando la secuencia DROP TABLE borramos la tabla y toda la informacion que tenga dentro. Y sabiendo que se trata de una direccion Local,
se borrarrian unicamente en nuestro servidor personal.*/



