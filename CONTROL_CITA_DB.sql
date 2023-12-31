--------------------------------------------------------
-- Archivo creado  - s�bado-noviembre-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_CITA
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_CITA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CLIENTE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_CLIENTE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PERMISO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PERMISO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PERMISOROL
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PERMISOROL"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ROL
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ROL"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USUARIO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_USUARIO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_VEHICULO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_VEHICULO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table CITA
--------------------------------------------------------

  CREATE TABLE "CITA" 
   (	"ID_CITA" NUMBER(*,0), 
	"FECHAHORA" DATE, 
	"DESCRIPCION" VARCHAR2(200 BYTE), 
	"ESTATUS" VARCHAR2(45 BYTE), 
	"FECHAALTA" DATE, 
	"ID_VEHICULO" NUMBER(*,0), 
	"ID_USUARIO" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "CLIENTE" 
   (	"ID_CLIENTE" NUMBER(*,0), 
	"CODIGOCLIENTE" VARCHAR2(10 BYTE), 
	"NOMBRE" VARCHAR2(45 BYTE), 
	"APELLIDOP" VARCHAR2(45 BYTE), 
	"APELLIDOM" VARCHAR2(45 BYTE), 
	"CORREO" VARCHAR2(100 BYTE), 
	"TELEFONO" VARCHAR2(20 BYTE), 
	"ESTATUS" VARCHAR2(45 BYTE), 
	"FECHAALTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PERMISO
--------------------------------------------------------

  CREATE TABLE "PERMISO" 
   (	"ID_PERMISO" NUMBER(*,0), 
	"CODIGOPERMISO" VARCHAR2(20 BYTE), 
	"NOMBRE" VARCHAR2(45 BYTE), 
	"DESCRIPCION" VARCHAR2(45 BYTE), 
	"ESTATUS" VARCHAR2(45 BYTE), 
	"FECHAALTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PERMISOROL
--------------------------------------------------------

  CREATE TABLE "PERMISOROL" 
   (	"ID_PERMISOROL" NUMBER(*,0), 
	"ID_PERMISO" NUMBER(*,0), 
	"ID_ROL" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROL
--------------------------------------------------------

  CREATE TABLE "ROL" 
   (	"ID_ROL" NUMBER(*,0), 
	"CODIGOROL" VARCHAR2(10 BYTE), 
	"NOMBRE" VARCHAR2(45 BYTE), 
	"DESCRIPCION" VARCHAR2(100 BYTE), 
	"ESTATUS" VARCHAR2(45 BYTE), 
	"FECHAALTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "USUARIO" 
   (	"ID_USUARIO" NUMBER(*,0), 
	"CODIGOUSUARIO" VARCHAR2(10 BYTE), 
	"NOMBRE" VARCHAR2(45 BYTE), 
	"APELLIDOP" VARCHAR2(45 BYTE), 
	"APELLIDOM" VARCHAR2(45 BYTE), 
	"TELEFONO" VARCHAR2(45 BYTE), 
	"USERNAME" VARCHAR2(45 BYTE), 
	"PASSWORD" VARCHAR2(128 BYTE), 
	"ID_ROL" NUMBER(*,0), 
	"ESTATUS" VARCHAR2(45 BYTE), 
	"FECHAALTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VEHICULO
--------------------------------------------------------

  CREATE TABLE "VEHICULO" 
   (	"ID_VEHICULO" NUMBER(*,0), 
	"VIN" VARCHAR2(20 BYTE), 
	"MARCA" VARCHAR2(45 BYTE), 
	"MODELO" VARCHAR2(45 BYTE), 
	"ANIO" NUMBER(*,0), 
	"COLOR" VARCHAR2(45 BYTE), 
	"PLACA" VARCHAR2(7 BYTE), 
	"REPARACIONPREVIA" VARCHAR2(200 BYTE), 
	"ESTATUS" VARCHAR2(45 BYTE), 
	"FECHAALTA" DATE, 
	"ID_CLIENTE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

REM INSERTING into DB_CONTROL_CITAS.PERMISO
SET DEFINE OFF;
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (12,'M0002_S1_O3','Permisos_Eliminar','Opcion permisos eliminar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (1,'M0001','menuAdministracionDePermisos','menu menuAdministracionDePermisos','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (2,'M0002','menuUsuarios','menu menuUsuarios','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (3,'M0003','menuUsuarios','mneu menuUsuarios','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (4,'M0004','menuClientes','mneu menuClientes','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (5,'M0005','menuVehiculos','menu menuVehiculos','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (6,'M0006','menuCitas','menu menuCitas','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (7,'M0002_S1','submenuPermisos','submenu submenuPermisos','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (8,'M0002_S2','submenuRoles','submenu submenuRoles','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (10,'M0002_S1_O1','Permisos_Registrar','Opcion permisos registrar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (11,'M0002_S1_O2','Permisos_Editar','Opcion permisos editar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (13,'M0002_S1_O4','Permisos_Buscar','Opcion permisos buscar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (41,'M0002_S2_O5','Roles_AsignarPermisos','Opcion Roles asignar permisos','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (15,'M0002_S2_O1','Roles_Registrar','Opcion Roles registrar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (16,'M0002_S2_O2','Roles_Editar','Opcion Roles editar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (17,'M0002_S2_O3','Roles_Eliminar','Opcion Roles eliminar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (18,'M0002_S2_O4','Roles_Buscar','Opcion Roles buscar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (24,'M0003_O1','Usuarios_Registrar','Opcion Usuarios registrar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (25,'M0003_O2','Usuarios_Editar','Opcion Usuarios editar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (26,'M0003_O3','Usuarios_Eliminar','Opcion Usuarios eliminar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (27,'M0003_O4','Usuarios_Buscar','Opcion Usuarios buscar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (28,'M0004_O1','Clientes_Registrar','Opcion Clientes registrar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (29,'M0004_O2','Clientes_Editar','Opcion Clientes editar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (30,'M0004_O3','Clientes_Eliminar','Opcion Clientes eliminar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (31,'M0004_O4','Clientes_Buscar','Opcion Clientes buscar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (32,'M0005_O1','Vehiculos_Registrar','Opcion Vehiculos registrar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (33,'M0005_O2','Vehiculos_Editar','Opcion Vehiculos editar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (34,'M0005_O3','Vehiculos_Eliminar','Opcion Vehiculos eliminar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (35,'M0005_O4','Vehiculos_Buscar','Opcion Vehiculos buscar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (36,'M0006_O1','Citas_Registrar','Opcion Citas registrar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (37,'M0006_O2','Citas_Editar','Opcion Citas editar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (38,'M0006_O3','Citas_Eliminar','Opcion Citas eliminar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.PERMISO (ID_PERMISO,CODIGOPERMISO,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (39,'M0006_O4','Citas_Buscar','Opcion Citas buscar','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
REM INSERTING into DB_CONTROL_CITAS.PERMISOROL
SET DEFINE OFF;
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (59,6,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (33,1,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (34,41,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (35,17,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (44,5,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (45,33,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (46,35,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (42,28,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (43,31,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (48,36,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (49,37,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (50,38,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (51,39,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (52,34,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (53,30,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (54,29,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (55,4,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (56,32,4);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (2,2,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (3,3,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (4,4,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (5,5,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (6,6,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (7,7,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (8,8,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (9,10,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (10,11,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (11,12,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (12,13,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (13,15,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (14,16,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (16,18,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (17,24,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (18,25,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (19,26,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (20,27,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (21,28,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (22,29,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (23,30,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (24,31,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (25,32,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (26,33,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (27,34,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (28,35,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (29,36,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (30,37,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (31,38,1);
Insert into DB_CONTROL_CITAS.PERMISOROL (ID_PERMISOROL,ID_PERMISO,ID_ROL) values (32,39,1);
REM INSERTING into DB_CONTROL_CITAS.ROL
SET DEFINE OFF;
Insert into DB_CONTROL_CITAS.ROL (ID_ROL,CODIGOROL,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (4,'R0002','Usuario','dee','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.ROL (ID_ROL,CODIGOROL,NOMBRE,DESCRIPCION,ESTATUS,FECHAALTA) values (1,'R0001','Administrador','Administra todo el sistema','Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
REM INSERTING into DB_CONTROL_CITAS.USUARIO
SET DEFINE OFF;
Insert into DB_CONTROL_CITAS.USUARIO (ID_USUARIO,CODIGOUSUARIO,NOMBRE,APELLIDOP,APELLIDOM,TELEFONO,USERNAME,PASSWORD,ID_ROL,ESTATUS,FECHAALTA) values (7,'00001','default','default','default','default','admin','Rz066ef7QdpL88ijYkHr+Q==',1,'Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
Insert into DB_CONTROL_CITAS.USUARIO (ID_USUARIO,CODIGOUSUARIO,NOMBRE,APELLIDOP,APELLIDOM,TELEFONO,USERNAME,PASSWORD,ID_ROL,ESTATUS,FECHAALTA) values (10,'00002','Anna','Gutierrez','1','1','usuario','gEh3p1guEzLGdfBlnmQ0vA==',4,'Vigente',to_date('18/11/23 00:00:00','DD/MM/RR HH24:MI:SS'));
--------------------------------------------------------
--  DDL for Index CITA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CITA_PK" ON "CITA" ("ID_CITA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CLIENTE_PK" ON "CLIENTE" ("ID_CLIENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PERMISOROL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERMISOROL_PK" ON "PERMISOROL" ("ID_PERMISOROL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PERMISO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERMISO_PK" ON "PERMISO" ("ID_PERMISO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ROL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ROL_PK" ON "ROL" ("ID_ROL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USUARIO_PK" ON "USUARIO" ("ID_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VEHICULO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VEHICULO_PK" ON "VEHICULO" ("ID_VEHICULO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ROL__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ROL__IDX" ON "ROL" ("CODIGOROL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PERMISO__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERMISO__IDX" ON "PERMISO" ("CODIGOPERMISO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CLIENTE__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CLIENTE__IDX" ON "CLIENTE" ("CODIGOCLIENTE", "CORREO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VEHICULO__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VEHICULO__IDX" ON "VEHICULO" ("VIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PERMISO
--------------------------------------------------------

  ALTER TABLE "PERMISO" MODIFY ("ID_PERMISO" NOT NULL ENABLE);
  ALTER TABLE "PERMISO" MODIFY ("CODIGOPERMISO" NOT NULL ENABLE);
  ALTER TABLE "PERMISO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "PERMISO" MODIFY ("ESTATUS" NOT NULL ENABLE);
  ALTER TABLE "PERMISO" MODIFY ("FECHAALTA" NOT NULL ENABLE);
  ALTER TABLE "PERMISO" ADD CONSTRAINT "PERMISO_PK" PRIMARY KEY ("ID_PERMISO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "USUARIO" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "USUARIO" MODIFY ("CODIGOUSUARIO" NOT NULL ENABLE);
  ALTER TABLE "USUARIO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "USUARIO" MODIFY ("APELLIDOP" NOT NULL ENABLE);
  ALTER TABLE "USUARIO" MODIFY ("APELLIDOM" NOT NULL ENABLE);
  ALTER TABLE "USUARIO" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "USUARIO" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "USUARIO" MODIFY ("ID_ROL" NOT NULL ENABLE);
  ALTER TABLE "USUARIO" MODIFY ("ESTATUS" NOT NULL ENABLE);
  ALTER TABLE "USUARIO" MODIFY ("FECHAALTA" NOT NULL ENABLE);
  ALTER TABLE "USUARIO" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY ("ID_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERMISOROL
--------------------------------------------------------

  ALTER TABLE "PERMISOROL" MODIFY ("ID_PERMISOROL" NOT NULL ENABLE);
  ALTER TABLE "PERMISOROL" MODIFY ("ID_PERMISO" NOT NULL ENABLE);
  ALTER TABLE "PERMISOROL" MODIFY ("ID_ROL" NOT NULL ENABLE);
  ALTER TABLE "PERMISOROL" ADD CONSTRAINT "PERMISOROL_PK" PRIMARY KEY ("ID_PERMISOROL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ROL
--------------------------------------------------------

  ALTER TABLE "ROL" MODIFY ("ID_ROL" NOT NULL ENABLE);
  ALTER TABLE "ROL" MODIFY ("CODIGOROL" NOT NULL ENABLE);
  ALTER TABLE "ROL" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ROL" MODIFY ("ESTATUS" NOT NULL ENABLE);
  ALTER TABLE "ROL" MODIFY ("FECHAALTA" NOT NULL ENABLE);
  ALTER TABLE "ROL" ADD CONSTRAINT "ROL_PK" PRIMARY KEY ("ID_ROL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "CLIENTE" MODIFY ("ID_CLIENTE" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("CODIGOCLIENTE" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("APELLIDOP" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("APELLIDOM" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("ESTATUS" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("FECHAALTA" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" ADD CONSTRAINT "CLIENTE_PK" PRIMARY KEY ("ID_CLIENTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CITA
--------------------------------------------------------

  ALTER TABLE "CITA" MODIFY ("ID_CITA" NOT NULL ENABLE);
  ALTER TABLE "CITA" MODIFY ("FECHAHORA" NOT NULL ENABLE);
  ALTER TABLE "CITA" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "CITA" MODIFY ("ESTATUS" NOT NULL ENABLE);
  ALTER TABLE "CITA" MODIFY ("FECHAALTA" NOT NULL ENABLE);
  ALTER TABLE "CITA" MODIFY ("ID_VEHICULO" NOT NULL ENABLE);
  ALTER TABLE "CITA" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "CITA" ADD CONSTRAINT "CITA_PK" PRIMARY KEY ("ID_CITA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VEHICULO
--------------------------------------------------------

  ALTER TABLE "VEHICULO" MODIFY ("ID_VEHICULO" NOT NULL ENABLE);
  ALTER TABLE "VEHICULO" MODIFY ("VIN" NOT NULL ENABLE);
  ALTER TABLE "VEHICULO" MODIFY ("MARCA" NOT NULL ENABLE);
  ALTER TABLE "VEHICULO" MODIFY ("MODELO" NOT NULL ENABLE);
  ALTER TABLE "VEHICULO" MODIFY ("ANIO" NOT NULL ENABLE);
  ALTER TABLE "VEHICULO" MODIFY ("COLOR" NOT NULL ENABLE);
  ALTER TABLE "VEHICULO" MODIFY ("PLACA" NOT NULL ENABLE);
  ALTER TABLE "VEHICULO" MODIFY ("ESTATUS" NOT NULL ENABLE);
  ALTER TABLE "VEHICULO" MODIFY ("FECHAALTA" NOT NULL ENABLE);
  ALTER TABLE "VEHICULO" MODIFY ("ID_CLIENTE" NOT NULL ENABLE);
  ALTER TABLE "VEHICULO" ADD CONSTRAINT "VEHICULO_PK" PRIMARY KEY ("ID_VEHICULO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CITA
--------------------------------------------------------

  ALTER TABLE "CITA" ADD CONSTRAINT "CITA_USUARIO_FK" FOREIGN KEY ("ID_USUARIO")
	  REFERENCES "USUARIO" ("ID_USUARIO") ENABLE;
  ALTER TABLE "CITA" ADD CONSTRAINT "CITA_VEHICULO_FK" FOREIGN KEY ("ID_VEHICULO")
	  REFERENCES "VEHICULO" ("ID_VEHICULO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERMISOROL
--------------------------------------------------------

  ALTER TABLE "PERMISOROL" ADD CONSTRAINT "PERMISOROL_PERMISO_FK" FOREIGN KEY ("ID_PERMISO")
	  REFERENCES "PERMISO" ("ID_PERMISO") ENABLE;
  ALTER TABLE "PERMISOROL" ADD CONSTRAINT "PERMISOROL_ROL_FK" FOREIGN KEY ("ID_ROL")
	  REFERENCES "ROL" ("ID_ROL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "USUARIO" ADD CONSTRAINT "USUARIO_ROL_FK" FOREIGN KEY ("ID_ROL")
	  REFERENCES "ROL" ("ID_ROL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VEHICULO
--------------------------------------------------------

  ALTER TABLE "VEHICULO" ADD CONSTRAINT "VEHICULO_CLIENTE_FK" FOREIGN KEY ("ID_CLIENTE")
	  REFERENCES "CLIENTE" ("ID_CLIENTE") ENABLE;
