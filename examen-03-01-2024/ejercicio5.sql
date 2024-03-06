/*
    Mostrar el arbol resultante de la consulta jerarquica sobre trabajador con raiz 'KING',
    no incluir trabajadores/jefes cuyo nombre contenga 'n' o 'm' en su tercer caracter.
*/

SELECT
    LPAD(' ', 2*(LEVEL-1))
    ||NOMBRE AS TRABAJADOR,
    COD_EMP,
    COD_JEFE
FROM
    TRABAJADOR
WHERE
    SUBSTR(NOMBRE, 3, 1) NOT IN ('N', 'M') START WITH NOMBRE='KING'
CONNECT BY
    PRIOR COD_EMP=COD_JEFE;