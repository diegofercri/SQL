/*
    Poner el sueldo maximo de todos los herreros a todos los herreros
*/

-- Sacamos el sueldo maximo del oficio HERRERO
SELECT
    E.SUELDO
FROM
    EMPLEADO       E
    JOIN OFICIOEMPLEADO OE
    ON E.EMPLEADO_ID=OE.EMPLEADO
    JOIN OFICIO O
    ON OE.OFICIO=O.OFICIO_ID
WHERE
    O.OFICIO='HERRERO'
ORDER BY
    1 DESC FETCH FIRST ROW ONLY;

-- Sacamos los numeros de empleados con oficio HERRERO que tienen un sueldo distinto al maximo
SELECT
    E.EMPLEADO_ID
FROM
    EMPLEADO       E
    JOIN OFICIOEMPLEADO OE
    ON E.EMPLEADO_ID=OE.EMPLEADO
    JOIN OFICIO O
    ON OE.OFICIO=O.OFICIO_ID
WHERE
    E.SUELDO NOT IN (
        SELECT
            E.SUELDO
        FROM
            EMPLEADO       E
            JOIN OFICIOEMPLEADO OE
            ON E.EMPLEADO_ID=OE.EMPLEADO
            JOIN OFICIO O
            ON OE.OFICIO=O.OFICIO_ID
        WHERE
            O.OFICIO='HERRERO'
        ORDER BY
            1 DESC FETCH FIRST ROW ONLY
    )
    AND O.OFICIO='HERRERO';

-- Actualizamos el sueldo de los empleados con oficio HERRERO que tienen un sueldo distinto al maximo
UPDATE EMPLEADO E
SET
    E.SUELDO = (
        SELECT
            E.SUELDO
        FROM
            EMPLEADO       E
            JOIN OFICIOEMPLEADO OE
            ON E.EMPLEADO_ID=OE.EMPLEADO
            JOIN OFICIO O
            ON OE.OFICIO=O.OFICIO_ID
        WHERE
            O.OFICIO='HERRERO'
        ORDER BY
            1 DESC FETCH FIRST ROW ONLY
    )
WHERE
    E.EMPLEADO_ID IN (
        SELECT
            E.EMPLEADO_ID
        FROM
            EMPLEADO       E
            JOIN OFICIOEMPLEADO OE
            ON E.EMPLEADO_ID=OE.EMPLEADO
            JOIN OFICIO O
            ON OE.OFICIO=O.OFICIO_ID
        WHERE
            E.SUELDO NOT IN (
                SELECT
                    E.SUELDO
                FROM
                    EMPLEADO       E
                    JOIN OFICIOEMPLEADO OE
                    ON E.EMPLEADO_ID=OE.EMPLEADO
                    JOIN OFICIO O
                    ON OE.OFICIO=O.OFICIO_ID
                WHERE
                    O.OFICIO='HERRERO'
                ORDER BY
                    1 DESC FETCH FIRST ROW ONLY
            )
            AND O.OFICIO='HERRERO'
    );

-- Borramos los empleados con oficio HERRERO (no se puede ya que violamos la integridad referencial de EMPLEADO con OFICIOEMPLEADO)
DELETE FROM EMPLEADO WHERE EMPLEADO_ID IN (
    SELECT
        E.EMPLEADO_ID
    FROM
        EMPLEADO       E
        JOIN OFICIOEMPLEADO OE
        ON E.EMPLEADO_ID=OE.EMPLEADO
        JOIN OFICIO O
        ON OE.OFICIO=O.OFICIO_ID
    WHERE
        O.OFICIO='HERRERO'
)