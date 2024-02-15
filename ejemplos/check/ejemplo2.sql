/*
 * Este ejemplo se establece la siguiente restricción en la definición de las tablas:
 * Si el tipo de canal es ‘menu’ el atributo menu no puede tomar valores nulos y el atributo coste deberá tomar valores nulos.
 * Si el tipo de canal es ‘independiente’ el atributo menu deberá tomar valores nulos mientras que el atributo coste no podrá tomar valores nulos.
*/

DROP TABLE MENU CASCADE CONSTRAINT;

DROP TABLE CANAL CASCADE CONSTRAINT;

CREATE TABLE MENU (
    ID_MENU NUMBER(4),
    DESCRICION VARCHAR2(50),
    COSTE NUMBER(4, 2),
    CONSTRAINT PK_MENU PRIMARY KEY (ID_MENU)
);

CREATE TABLE CANAL (
    ID_CANAL NUMBER(4),
    DESCRIPCION VARCHAR2(50),
    TIPO VARCHAR(13),
    CONSTRAINT CK_TIPOCANAL CHECK (TIPO IN ('MENU', 'INDEPENDIENTE')),
    COSTE NUMBER(4, 2),
    MENU NUMBER(2),
    ID_MENU NUMBER(4),
    CONSTRAINT FK_CANAL FOREIGN KEY (MENU) REFERENCES MENU(ID_MENU),
    CONSTRAINT CK_MENU CHECK (TIPO='MENU' AND MENU IS NOT NULL AND COSTE IS NULL),
    CONSTRAINT CK_INDEPENDIENTE CHECK (TIPO='INDEPENDIENTE' AND MENU IS NULL AND COSTE IS NOT NULL)
);