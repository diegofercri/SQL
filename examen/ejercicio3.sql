/*
 * No se puede usar ningun select en cuya clausula from haya mas de una tabla.
 * Resuelve: Nombre de los empleados que viven en en 'PAPA KING' y no tengan ningun oficio.
*/

SELECT
    NOMBRE
FROM
    EMPLEADA       E
    JOIN ALOJAMIENTO A
    ON E.ALOJAMIENTO=A.ALOJAMIENTO_ID
WHERE
    A.ALOJAMIENTO='PAPA KING'
    AND E.EMPLEADO_ID NOT IN (
        SELECT
            EMPLEADO
        FROM
            OFICIOEMPLEADO
    );