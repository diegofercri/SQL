/*
 * Crearemos utilizando la cláusula as subquery una copia de la tabla empleado.
*/

CREATE TABLE COPIAEMPLEADO AS
    SELECT
        *
    FROM
        EMPLEADO;