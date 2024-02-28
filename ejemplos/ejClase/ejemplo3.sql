-- Nombre o nombres del jefe o jefes con mayor numero de empleados

SELECT
    NOMBRE
FROM
    (
        SELECT
            J.NOMBRE
        FROM
            TRABAJADOR T
            JOIN TRABAJADOR J
            ON J.TRABAJADOR_ID=T.JEFE_ID
        GROUP BY
            J.NOMBRE
        HAVING COUNT(T.TRABAJADOR_ID) = (
            SELECT
                MAX(CANTIDAD)
            FROM
                (
                    SELECT
                        J.NOMBRE,
                        COUNT(T.TRABAJADOR_ID) AS CANTIDAD
                    FROM
                        TRABAJADOR T
                        JOIN TRABAJADOR J
                        ON J.TRABAJADOR_ID=T.JEFE_ID
                    GROUP BY
                        J.NOMBRE
                )
        )
    );

-- CON WITH
WITH CJT AS (
    SELECT
        J.NOMBRE,
        COUNT(T.TRABAJADOR_ID) AS CANTIDAD
    FROM
        TRABAJADOR T
        JOIN TRABAJADOR J
        ON J.TRABAJADOR_ID=T.JEFE_ID
    GROUP BY
        J.NOMBRE
)
SELECT
    NOMBRE
FROM
    CJT
WHERE
    CANTIDAD = (
        SELECT
            MAX(CANTIDAD)
        FROM
            CJT
    );