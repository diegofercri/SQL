/*
 * Queremos añadir una restricción a nivel de tabla para que el atributo sueldo sea mayor que 900.
*/

ALTER TABLE EMPLEADO ADD CONSTRAINT CK_SUELDO CHECK (SUELDO>900);