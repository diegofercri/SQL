/*
 * Supongamos ahora que queremos obtener los nombres de los empleados que están alojados
 * en ‘MULLERS’ o ‘PAPA KING’. Realizaremos esta consulta mediante la técnica de
 * subconsultas utilizando los operadores anteriores. La consulta puede escribirse de la
 * siguiente manera:
*/

-- CON SUBCONSULTA Y ANY
SELECT
    NOMBRE
FROM
    EMPLEADO
WHERE
    ALOJAMIENTO= ANY(
        SELECT
            ALOJAMIENTO_ID
        FROM
            ALOJAMIENTO
        WHERE
            ALOJAMIENTO IN( 'MULLERS', 'PAPA KING' )
    );

-- CON SUBCONSULTA Y SOME
SELECT
    NOMBRE
FROM
    EMPLEADO
WHERE
    ALOJAMIENTO= SOME(
        SELECT
            ALOJAMIENTO_ID
        FROM
            ALOJAMIENTO
        WHERE
            ALOJAMIENTO IN( 'MULLERS', 'PAPA KING' )
    );

-- CON SUBCONSULTA E IN
SELECT
    NOMBRE
FROM
    EMPLEADO
WHERE
    ALOJAMIENTO IN (
        SELECT
            ALOJAMIENTO_ID
        FROM
            ALOJAMIENTO
        WHERE
            ALOJAMIENTO IN( 'MULLERS', 'PAPA KING' )
    );

-- CON JOIN
SELECT
    NOMBRE
FROM
    EMPLEADO
    JOIN ALOJAMIENTO
    ON EMPLEADO.ALOJAMIENTO=ALOJAMIENTO_ID
WHERE
    ALOJAMIENTO.ALOJAMIENTO IN ('MULLERS', 'PAPA KING');

-- CONSULTA NORMAL
SELECT
    NOMBRE
FROM
    EMPLEADO,
    ALOJAMIENTO
WHERE
    EMPLEADO.ALOJAMIENTO=ALOJAMIENTO_ID
    AND ALOJAMIENTO.ALOJAMIENTO IN ('MULLERS', 'PAPA KING');