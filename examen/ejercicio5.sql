/*
 * ¿Que alojamiento tiene mas empleados? Con mostrar el primero es mas que suficiente.
 * Se debe mostrar el nombre del alojamiento y el numero de empleados.
*/

SELECT
    A.NOMBRECOMPLETO,
    COUNT(E.EMPLEADO_ID) AS "TOTAL DE EMPLEADOS"
FROM
    ALOJAMIENTO A
    JOIN EMPLEADA E
    ON A.ALOJAMIENTO_ID = E.ALOJAMIENTO
GROUP BY
    A.NOMBRECOMPLETO
ORDER BY
    "TOTAL DE EMPLEADOS" DESC FETCH FIRST ROW ONLY;