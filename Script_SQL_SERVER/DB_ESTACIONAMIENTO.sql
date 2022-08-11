USE [MASTER]
GO
CREATE DATABASE [db_estacionamiento]
GO
USE [db_estacionamiento]
GO

--
-- Base de datos: estacionamiento
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla administrador
--

CREATE TABLE ADMINISTRATIVOS (
  USER_NAME varchar(255) NOT NULL,
  PASSWORD varchar(255) NOT NULL,
  NOMBRE varchar(255) NOT NULL,
  APELLIDO varchar(255) NOT NULL,
  CORREO varchar(255) NOT NULL,
  CARGO varchar(45) NOT NULL
);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla tipo_cuenta
--

CREATE TABLE TIPO_CUENTA (
  ID_TIPO_CUENTA int NOT NULL,
  TIPO_CUENTA varchar(255) NOT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla tipo_banco
--

CREATE TABLE TIPO_BANCO (
  ID_TIPO_BANCO int NOT NULL,
  TIPO_BANCO varchar(255) NOT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla tipo_usuario
--

CREATE TABLE TIPO_USUARIO (
  ID_TIPO_USUARIO int NOT NULL,
  TIPO_USUARIO varchar(255) NOT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla usuario
--

CREATE TABLE USUARIO (
  RUT_USUARIO varchar(12) NOT NULL,
  NOMBRE_USUARIO varchar(255) NOT NULL,
  APELLIDO_USUARIO varchar(255) NOT NULL,
  CORREO_USUARIO varchar(255) NOT NULL,
  TELEFONO_USUARIO int NOT NULL,
  DIRECCION_USUARIO varchar(255) NOT NULL,
  ID_TIPO_CUENTA int NOT NULL,
  ID_TIPO_BANCO int NOT NULL,
  NUMERO_CUENTA_BANCARIA bigint NOT NULL,
  CVV int NOT NULL,
  ID_TIPO_USUARIO int NOT NULL,
  HABILITADO bit NOT NULL
);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla estacionamiento
--

CREATE TABLE ESTACIONAMIENTO (
   COD_ESTACIONAMIENTO varchar(12) NOT NULL,
   RUT_USUARIO varchar(12) NOT NULL,
   DIRECCION varchar(255) NOT NULL,
   PRECIO_HORA int NOT NULL,
   SUPERFICIE int NOT NULL,
   ALTURA int NOT NULL,
   HABILITADO bit NOT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla vehiculo
--

CREATE TABLE VEHICULO (
  RUT_USUARIO varchar(12) NOT NULL,
  PATENTE varchar(20) NOT NULL,
  MARCA varchar(255) NOT NULL,
  MODELO varchar(255) NOT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla detalle_arriendo
--

CREATE TABLE DETALLE_ARRIENDO (
  ID_DETALLE int NOT NULL IDENTITY(1,1),
  COD_ARRIENDO varchar(20) NOT NULL,
  DURACION int NOT NULL,
  COSTO_TOTAL int NOT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla arriendo
--

CREATE TABLE ARRIENDO (
  COD_ARRIENDO varchar(20) NOT NULL,
  PATENTE varchar(20) NOT NULL,
  COD_ESTACIONAMIENTO varchar(12) NOT NULL,
  FECHA_ARRIENDO datetime NOT NULL,
  PAGADO bit NOT NULL
);

-- --------------------------------------------------------

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla ADMINISTRATIVOS
--
alter table ADMINISTRATIVOS
  add primary key (USER_NAME);

--
-- Indices de la tabla USUARIO
--
alter table USUARIO
  add primary key (RUT_USUARIO);

--
-- Indices de la tabla TIPO_CUENTA
--
alter table TIPO_CUENTA
  add primary key (ID_TIPO_CUENTA);

--
-- Indices de la tabla TIPO_BANCO
--
alter table TIPO_BANCO
  add primary key (ID_TIPO_BANCO);

--
-- Indices de la tabla TIPO_USUARIO
--
alter table TIPO_USUARIO
  add primary key (ID_TIPO_USUARIO);

--
-- Indices de la tabla ESTACIONAMIENTO
--
alter table ESTACIONAMIENTO
  add primary key (COD_ESTACIONAMIENTO);

--
-- Indices de la tabla VEHICULO
--
alter table VEHICULO
  add primary key (PATENTE);

--
-- Indices de la tabla DETALLE ARRIENDO
--

alter table DETALLE_ARRIENDO
  add primary key (ID_DETALLE);
  
 --
-- Indices de la tabla ARRIENDO
-- 
alter table ARRIENDO
  add primary key (COD_ARRIENDO);



--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla USUARIO
--

ALTER TABLE USUARIO ADD CONSTRAINT USUARIO_CUENTA_FK FOREIGN KEY ( ID_TIPO_CUENTA ) REFERENCES TIPO_CUENTA ( ID_TIPO_CUENTA );

ALTER TABLE USUARIO ADD CONSTRAINT USUARIO_BANCO_FK FOREIGN KEY ( ID_TIPO_BANCO ) REFERENCES TIPO_BANCO ( ID_TIPO_BANCO );

ALTER TABLE USUARIO ADD CONSTRAINT USUARIO_TIPO_FK FOREIGN KEY ( ID_TIPO_USUARIO ) REFERENCES TIPO_USUARIO ( ID_TIPO_USUARIO );

--
-- Filtros para la tabla ESTACIONAMIENTO
--

ALTER TABLE ESTACIONAMIENTO ADD CONSTRAINT ESTACIONAMIENTO_USUARIO_FK FOREIGN KEY ( RUT_USUARIO ) REFERENCES USUARIO ( RUT_USUARIO );

--
-- Filtros para la tabla VEHICULO
--

ALTER TABLE VEHICULO ADD CONSTRAINT VEHICULO_USUARIO_FK FOREIGN KEY ( RUT_USUARIO ) REFERENCES USUARIO ( RUT_USUARIO ) ;

--
-- Filtros para la tabla ARRIENDO
--

ALTER TABLE DETALLE_ARRIENDO ADD CONSTRAINT DETALLE_ARRIENDO_FK FOREIGN KEY ( COD_ARRIENDO ) REFERENCES ARRIENDO ( COD_ARRIENDO ) ;

ALTER TABLE ARRIENDO ADD CONSTRAINT ARRIENDO_ESTACIONAMIENTO_FK FOREIGN KEY ( COD_ESTACIONAMIENTO ) REFERENCES ESTACIONAMIENTO ( COD_ESTACIONAMIENTO ) ;

ALTER TABLE ARRIENDO ADD CONSTRAINT ARRIENDO_VEHICULO_FK FOREIGN KEY ( PATENTE ) REFERENCES VEHICULO ( PATENTE ) ;


--
-- insercion para tablas creadas
--

--
-- insercion para la tabla ADMINISTRATIVOS
--

INSERT INTO ADMINISTRATIVOS VALUES ('admin','admin','administrador','prueba','administrador@correo.cl','administrador');

--
-- insercion para la tabla TIPO_CUENTA
--

INSERT INTO TIPO_CUENTA VALUES (1,'Credito');
INSERT INTO TIPO_CUENTA VALUES (2,'Cuenta Vista');
INSERT INTO TIPO_CUENTA VALUES (3,'Cuenta Corriente');

--
-- insercion para la tabla TIPO_BANCO
--

INSERT INTO TIPO_BANCO VALUES (1,'Banco de Chile');
INSERT INTO TIPO_BANCO VALUES (2,'Banco Internacional');
INSERT INTO TIPO_BANCO VALUES (3,'Scotiabank Chile');
INSERT INTO TIPO_BANCO VALUES (4,'Banco de Crédito e Inversiones');
INSERT INTO TIPO_BANCO VALUES (5,'Corpbanca');
INSERT INTO TIPO_BANCO VALUES (6,'Banco Bice');
INSERT INTO TIPO_BANCO VALUES (7,'HSBC Bank (Chile)');
INSERT INTO TIPO_BANCO VALUES (8,'Banco Santander');
INSERT INTO TIPO_BANCO VALUES (9,'Banco Itaú Chile');
INSERT INTO TIPO_BANCO VALUES (10,'Banco Security');
INSERT INTO TIPO_BANCO VALUES (11,'Banco Falabella');
INSERT INTO TIPO_BANCO VALUES (12,'Deutsche Bank');
INSERT INTO TIPO_BANCO VALUES (13,'Banco RIpley');
INSERT INTO TIPO_BANCO VALUES (14,'Rabobank Chile');
INSERT INTO TIPO_BANCO VALUES (15,'Banco Consorcio');
INSERT INTO TIPO_BANCO VALUES (16,'Banco Paris');

--
-- insercion para la tabla TIPO_USUARIO
--

INSERT INTO TIPO_USUARIO VALUES (1,'Arrendatario');
INSERT INTO TIPO_USUARIO VALUES (2,'Dueño');