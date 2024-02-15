/*
 * Queremos obtener ahora un listado en el que aparezca el nombre del empleado y el nombre de su jefe.
 * Necesitamos una combinación de la tabla trabajador uniendo una fila de un trabajador con la fila de su jefe, 
 * así podremos sacar los nombres de los dos. Para darle también uso a los alias de columna haremos que la salida 
 * tenga el siguiente aspecto en los nombres de sus columnas: EMPLEADO Y JEFE. La columna empleado tendrá los 
 * nombres de los empleados y la columna jefe tendrá los nombres del jefe.
*/

SELECT
    T.NOMBRE TRABAJADOR,
    J.NOMBRE JEFE
FROM
    TRABAJADOR T,
    TRABAJADOR J
WHERE
    T.JEFE_ID=J.TRABAJADOR_ID;