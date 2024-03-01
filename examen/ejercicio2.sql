-- Usando los datos del ej1 mostrar Nº de oficio y cantidad de empleados de ese oficio.

SELECT
    O.NUMOFICIO,
    COUNT(E.NUMEMP) AS "CANTIDAD DE EMPLEADOS"
FROM
    OFICIO O
    JOIN OFICIOEMPLEADO OE
    ON O.NUMOFICIO = OE.OFICIO
    JOIN EMPLEADO E
    ON OE.EMPLEADO = E.NUMEMP
WHERE
    E.EDAD > 40
GROUP BY
    O.NUMOFICIO;