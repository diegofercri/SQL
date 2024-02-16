/*
 * Obten una lista ordenada del nombre del oficio junto con la media de edad de los empleados
 * que ejercen ese oficio ordenada por valor ascendente de edad. solo se debe considerar
 * los empleados para los que hemos grabbado una edad.
*/

SELECT
    O.OFICIO,
    AVG(E.EDAD) AS "EDAD MEDIA"
FROM
    OFICIO O
    JOIN OFICIOEMPLEADO OE
    ON O.OFICIO_ID = OE.OFICIO
    JOIN EMPLEADA E
    ON OE.EMPLEADO = E.EMPLEADO_ID
WHERE
    E.EDAD IS NOT NULL
GROUP BY
    O.OFICIO
ORDER BY
    "EDAD MEDIA";