/*
 * Queremos obtener la misma información anterior pero queremos que en listado la en lugar de nombre como
 * identificador de columna aparezca EMPLEADO, y en lugar de edad aparezca años. Escribiríamos lo siguiente:
*/

SELECT
    NOMBRE EMPLEADO,
    EDAD   AÑOS
FROM
    EMPLEADO;

-- Oracle incluso permite que el alias de columna pueda ser una cadena de caracteres
SELECT
    NOMBRE "NOMBRE DEL EMPLEADO",
    EDAD   "EDAD ACTUAL"
FROM
    EMPLEADO;