/*
 * Este ejemplo se establece la siguiente restricción en la definición de las tablas:
 * Si el tipo de canal es ‘menu’ el atributo menu no puede tomar valores nulos y el atributo coste deberá tomar valores nulos.
 * Si el tipo de canal es ‘independiente’ el atributo menu deberá tomar valores nulos mientras que el atributo coste no podrá tomar valores nulos.
*/

DROP TABLE MENU CASCADE CONSTRAINT;
DROP TABLE CANAL CASCADE CONSTRAINT;

CREATE TABLE MENU (
    ID_Menu NUMBER(4),
    Descricion VARCHAR2(50),
    Coste NUMBER(4,2),
    CONSTRAINT PK_Menu PRIMARY KEY (ID_Menu)
);

CREATE TABLE CANAL (
    ID_Canal NUMBER(4),
    Descripcion VARCHAR2(50),
    Tipo VARCHAR(13),
    CONSTRAINT CK_TipoCanal CHECK (Tipo IN ('MENU', 'INDEPENDIENTE')),
    Coste NUMBER(4,2),
    Menu NUMBER(2),
    ID_Menu NUMBER(4),
    CONSTRAINT FK_Canal FOREIGN KEY (MENU) REFERENCES MENU(ID_Menu),
    CONSTRAINT CK_Menu CHECK (Tipo='MENU' AND Menu IS NOT NULL AND Coste IS NULL),
    CONSTRAINT CK_Independiente CHECK (Tipo='INDEPENDIENTE' AND Menu IS NULL AND Coste IS NOT NULL)
);