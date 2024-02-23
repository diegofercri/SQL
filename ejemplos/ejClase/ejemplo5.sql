-- Recorrer un arbol de jerarquias con SQL con el metodo pre orden

COLUMN TRABAJADOR FORMAT A30

SELECT
    LPAD(' ', 2*(LEVEL-1))
    -- "||" sirve para concatenar strings
    ||NOMBRE AS TRABAJADOR,
    TRABAJADOR_ID,
    JEFE_ID
FROM
    TRABAJADOR START WITH NOMBRE='KING'
CONNECT BY
    PRIOR TRABAJADOR_ID=JEFE_ID;