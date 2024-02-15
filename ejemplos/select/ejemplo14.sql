/*
 * Queremos obtener ahora el nombre del empleado y el nombre de sus oficios.
 * La información que necesitamos está en las tablas EMPLEADO, OFICIO y OFICIOEMPLEADO.
 * Habrá que combinar estas las tres tablas para obtener la información solicitada.
 * Tres tablas se combinan de la misma forma que se combinan dos. Las columnas comunes se igualan en la cláusula where.
 * Para combinar tres tablas, se necesita que dos de ellas se puedan combinar con una tercera.
 * La consulta anterior la escribiríamos de la siguiente manera:
*/

-- CON WHERE
SELECT
    NOMBRE,
    OFICIO.OFICIO
FROM
    EMPLEADO,
    OFICIO,
    OFICIOEMPLEADO
WHERE
    EMPLEADO_ID=OFICIOEMPLEADO.EMPLEADO
    AND OFICIO_ID=OFICIOEMPLEADO.OFICIO;

-- CON JOIN
SELECT
    NOMBRE,
    OFICIO.OFICIO
FROM
    EMPLEADO
    JOIN OFICIOEMPLEADO
    ON EMPLEADO_ID=OFICIOEMPLEADO.EMPLEADO
    JOIN OFICIO
    ON OFICIO_ID=OFICIOEMPLEADO.OFICIO;

-- CON SUBCONSULTA // ESTE NO SE PUEDE HACER CON SUBCONSULTA, AL MENOS CON EL CONOCIMIENTO ACTUAL