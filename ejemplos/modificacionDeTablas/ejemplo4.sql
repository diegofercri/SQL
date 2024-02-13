/*
 * Como no podemos modificar restricciones si yo quisiera ahora que el sueldo fuese siempre mayor que 1000
 * primero hay que eliminar la restriccion y crearla de nuevo.
*/

ALTER TABLE EMPLEADO DROP CONSTRAINT CK_Sueldo;
ALTER TABLE EMPLEADO ADD CONSTRAINT CK_Sueldo CHECK (Sueldo>1000);