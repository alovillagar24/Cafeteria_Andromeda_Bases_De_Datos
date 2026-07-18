**************************************************************************
*                                                                        *
*  [SYSTEM_ID: CAFETERIA_ANDROMEDA_DB]                                   *
*  [LAST_UPDATE: 2026-07-18]                                             *
*                                                                        *
**************************************************************************

> CONFIG_MANIFEST:
  - /schema    : DEFINICIONES DDL. NO MODIFICAR ESTRUCTURAS SIN AUTORIZACION.
  - /data      : SETS DE DATOS DML. REQUERIDO PARA INICIALIZACION.
  - /queries   : LOGICA DE NEGOCIO Y RASTREO DE DATOS.
  - /diagrams  : REFERENCIA DE MODELADO (DER).

> PROCESO DE INICIALIZACION:
  1. ESTABLECER CONEXION CON EL SERVIDOR SQL.
  2. IMPORTAR ARCHIVOS DDL DESDE /schema EN ORDEN SECUENCIAL.
  3. POBLAR TABLAS CON LOS SCRIPTS EN /data.
  4. VERIFICAR INTEGRIDAD EJECUTANDO: "queries/verificacion_sistema.sql".

> PARAMETROS DE HARDENING:
  - APLICACION DE CONSTRAINT UNIQUE EN CAMPOS DE IDENTIFICACION.
  - FOREIGN KEYS CON TRIGGER ON DELETE CASCADE PARA EVITAR REGISTROS HUERFANOS.
  - VALIDACION DE TIPO EN TIEMPO DE INSERCION (CHECK).

> ADVERTENCIA:
  CUALQUIER INTENTO DE INSERCION DE DATOS CORRUPTOS SERA BLOQUEADO POR 
  EL MOTOR DE LA BASE DE DATOS. CONSULTE /queries SI REQUIERE REPORTES 
  DE ESTADO O ANALITICA DE VENTAS.

**************************************************************************
[BOOT_SEQUENCE_COMPLETE]
[READY_FOR_INPUT]
