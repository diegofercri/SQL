DROP TABLE TRABAJADOR CASCADE CONSTRAINTS;

CREATE TABLE TRABAJADOR(
  COD_EMP NUMBER(4),
  NOMBRE VARCHAR2(15),
  COD_JEFE NUMBER(4),
  CONSTRAINT PK_TRABAJADOR PRIMARY KEY(COD_EMP),
  CONSTRAINT FK_TRABAJADOR_COD_EMP FOREIGN KEY(COD_JEFE) REFERENCES TRABAJADOR(COD_EMP)
);

INSERT INTO TRABAJADOR VALUES(
  7839,
  'KING',
  NULL
);

INSERT INTO TRABAJADOR VALUES(
  7698,
  'BLAKE',
  7839
);

INSERT INTO TRABAJADOR VALUES(
  7782,
  'CLARK',
  7839
);

INSERT INTO TRABAJADOR VALUES(
  7566,
  'JONES',
  7839
);

INSERT INTO TRABAJADOR VALUES(
  7654,
  'MARTIN',
  7698
);

INSERT INTO TRABAJADOR VALUES(
  7499,
  'ALLEN',
  7698
);

INSERT INTO TRABAJADOR VALUES(
  7844,
  'TURNER',
  7698
);

INSERT INTO TRABAJADOR VALUES(
  7900,
  'JAMES',
  7698
);

INSERT INTO TRABAJADOR VALUES(
  7521,
  'WARD',
  7698
);

INSERT INTO TRABAJADOR VALUES(
  7902,
  'FORD',
  7566
);

INSERT INTO TRABAJADOR VALUES(
  7369,
  'SMITH',
  7902
);

INSERT INTO TRABAJADOR VALUES(
  7788,
  'SCOTT',
  7566
);

INSERT INTO TRABAJADOR VALUES(
  7876,
  'ADAMS',
  7788
);

INSERT INTO TRABAJADOR VALUES(
  7934,
  'MILLER',
  7782
);

COMMIT;