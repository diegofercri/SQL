/*
 * Como hasta ahora solo teníamos 2 actos médicos, hemos impuesto que la secuencia comience por 3.
 * Podemos generar ahora un nuevo acto médico utilizando la secuencia SEQ_CODACT para generar un
 * nuevo valor de clave primaria para la columna cod_act.
*/

INSERT INTO ACTOMEDICO VALUES (
    SEQ_ID_ACTOMEDICO.NEXTVAL,
    'Acto Medico 3',
    10500
);