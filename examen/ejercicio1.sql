-- Una unica tabla por select. Nº de oficio y Nº de empleado de aquellos oficios que tengan algun empleado con edad > 40.

SELECT
    (
        SELECT
            NUMOFICIO
        FROM
            OFICIO
        WHERE
            NUMOFICIO = OFICIOEMPLEADO.OFICIO
    ) AS NUMOFICIO,
    (
        SELECT
            NUMEMP
        FROM
            EMPLEADO
        WHERE
            NUMEMP = OFICIOEMPLEADO.EMPLEADO
            AND EDAD > 40
    ) AS NUMEMP
FROM
    OFICIOEMPLEADO
WHERE
    OFICIOEMPLEADO.EMPLEADO IN (
        SELECT
            NUMEMP
        FROM
            EMPLEADO
        WHERE
            EDAD > 40
    )