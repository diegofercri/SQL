-- Nombres de empleados y numero de su oficio, incluyendo los empleado que no tienen oficio

-- CON LEFT JOIN (no se si esta bien, probablemente si)
SELECT
    E.NOMBRE,
    OE.OFICIO
FROM
    EMPLEADO       E
    LEFT JOIN OFICIOEMPLEADO OE
    ON E.EMPLEADO_ID = OE.EMPLEADO
ORDER BY
    2;

-- CON UNION (creo que no esta bien)
SELECT
    E.NOMBRE,
    0 AS OFICIO
FROM
    EMPLEADO       E
MINUS
SELECT
    E.NOMBRE,
    OE.OFICIO
FROM
    EMPLEADO E, 
    OFICIOEMPLEADO OE
ORDER BY
    2;