/*
    Muestra el nombre de todos los oficios (sin repetir) y cuantos empleados lo ejercen.
    En oficios sin empleados mostrar 0.
*/

SELECT
    O.OFICIO,
    COUNT(E.NUMEMP) AS "CANTIDAD DE EMPLEADOS"
FROM
    OFICIO O
    LEFT JOIN OFICIOEMPLEADO OE
    ON O.NUMOFICIO = OE.OFICIO
    LEFT JOIN EMPLEADO E
    ON OE.EMPLEADO = E.NUMEMP
GROUP BY
    O.OFICIO;
