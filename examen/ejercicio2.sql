/* 
 * Se pide nombre y sueldo de todos los empleados cuyo sueldo sea mayor (estricto) que el mínimo y menor
 * (estricto) que el máximo (podría haber mas de uno)
*/

SELECT
    NOMBRE,
    SUELDO
FROM
    EMPLEADA
WHERE
    SUELDO>(
        SELECT
            MIN(SUELDO)
        FROM
            EMPLEADA
    )
    AND SUELDO<(
        SELECT
            MAX(SUELDO)
        FROM
            EMPLEADA
    );