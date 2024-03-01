/*
    Usando los datos del ej2 mostrar Nº de oficio con maxima cantidad de empleados.
    Solo se debe mostrar Nº de oficio, puede haber más de uno.
*/

WITH CJT AS (
    SELECT
        O.NUMOFICIO,
        COUNT(E.NUMEMP) AS "CANTIDAD DE EMPLEADOS"
    FROM
        OFICIO         O
        JOIN OFICIOEMPLEADO OE
        ON O.NUMOFICIO = OE.OFICIO
        JOIN EMPLEADO E
        ON OE.EMPLEADO = E.NUMEMP
    WHERE
        E.EDAD > 40
    GROUP BY
        O.NUMOFICIO
)
SELECT
    NUMOFICIO
FROM
    CJT
WHERE
    "CANTIDAD DE EMPLEADOS" = (
        SELECT
            MAX("CANTIDAD DE EMPLEADOS")
        FROM
            CJT
    );