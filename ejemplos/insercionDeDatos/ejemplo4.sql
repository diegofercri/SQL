/*
 * Supongamos que tenemos la tabla tarifa vacía. Supongamos también que todas las
 * compañías con las que trabaja el médico cubren todos los actos médicos, cada una con un
 * precio distinto. El hecho de asociar a cada compañía todos los actos médicos se convertiría
 * en una tarea bastante tediosa. Con la cláusula subquery es posible hacer esto en una sola
 * orden:
*/

INSERT INTO TARIFA (ID_ActoMedico, ID_Compania) SELECT ID_ActoMedico,ID_Compania FROM ACTOMEDICO,COMPANIA;