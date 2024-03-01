/*
 * No se puede usar ningun select en cuya clausula from haya mas de una tabla.
 * Resuelve: Nombre de los empleados que viven en en 'PAPA KING' y no tengan ningun oficio.
*/

-- SOLUCION INVALIDA PARA CUMPLIR LA CLAUSULA DE NO USAR DOS TABLAS EN UN SELECT
SELECT
    NOMBRE
FROM
    EMPLEADA E
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

-- SOLUCIONES VALIDAS PARA CUMPLIR LA CLAUSULA DE NO USAR DOS TABLAS EN UN SELECT
-- ** NO FUNCIONAN ** --
-- CON NOT IN
SELECT
    NOMBRE
FROM
    EMPLEADA
WHERE
    ALOJAMIENTO=(
        SELECT
            ALOJAMIENTO_ID
        FROM
            ALOJAMIENTO
        WHERE
            NOMBRE='PAPA KING'
    )
    AND EMPLEADO_ID NOT IN (
        SELECT
            EMPLEADO
        FROM
            OFICIOEMPLEADO
    );

-- CON NOT EXISTS
SELECT
    NOMBRE
FROM
    EMPLEADA
WHERE
    ALOJAMIENTO=(
        SELECT
            ALOJAMIENTO_ID
        FROM
            ALOJAMIENTO
        WHERE
            NOMBRE='PAPA KING'
    )
    AND NOT EXISTS (
        SELECT
            *
        FROM
            OFICIOEMPLEADO
        WHERE
            EMPLEADO=EMPLEADO_ID
    );