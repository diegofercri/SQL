/*
 * Crearemos utilizando la cláusula as subquery una copia de la tabla empleado.
*/

create table COPIAEMPLEADO as select * from EMPLEADO;