/*
 * Supongamos que queremos obtener el nombre del empleado y el nombre del alojamiento en el que están hospedados.
 * Para obtener esta información se necesitan la tabla empleado y la tabla alojamiento.
*/

SELECT
    NOMBRE,
    ALOJAMIENTO.ALOJAMIENTO
FROM
    EMPLEADO,
    ALOJAMIENTO
WHERE
    EMPLEADO.ALOJAMIENTO=ALOJAMIENTO_ID;

/*
 * Podemos escribir esta misma consulta mediante lo que comúnmente se denomina “Inner Join”,
 * haciendo uso del operador Join. La consulta anterior se escribiría así:
*/

SELECT
    NOMBRE,
    ALOJAMIENTO.ALOJAMIENTO
FROM
    EMPLEADO
    JOIN ALOJAMIENTO
    ON EMPLEADO.ALOJAMIENTO=ALOJAMIENTO_ID;