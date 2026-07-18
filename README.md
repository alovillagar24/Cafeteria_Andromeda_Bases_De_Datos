**************************************************************************
*                                                                        *
*  [ID_SISTEMA: CAFETERIA_ANDROMEDA_DB]                                  *
*  [ULTIMA_ACTUALIZACION: 2026-07-18]                                    *
*  [VERSION_DOC: VERSION_FINAL]                                          *
*                                                                        *
**************************************************************************

> MANIFIESTO_CONFIGURACION:
  - /schema    : DEFINICIONES DDL. [EJECUTAR PRIMERO]
  - /data      : CONJUNTOS DE DATOS DML. [EJECUTAR DESPUES DE LOS ALTERS]
  - /queries   : LOGICA DE NEGOCIO, PRUEBAS DE INTEGRIDAD Y SCRIPTS DE LIMPIEZA.
  - /diagrams  : REFERENCIA DE ARQUITECTURA.

> SECUENCIA_DESPLIEGUE (OBLIGATORIA):
  1. EJECUTAR /schema/01_create_tables.sql  (ESTRUCTURAS DE TABLAS)
  2. EJECUTAR /schema/02_alter_tables.sql    (RESTRICCIONES Y MODIFICACIONES)
  3. EJECUTAR /data/01_catalogos_iniciales.sql (DATOS MAESTROS)
  4. EJECUTAR /data/02_datos_prueba.sql        (REGISTROS DE PRUEBA)
  5. EJECUTAR /data/03_datos_prueba_after_alters.sql (REGISTROS POST-RESTRICCIONES)

> VERIFICACION_INTEGRIDAD:
  - INTEGRIDAD DEL SISTEMA: EJECUTAR /queries/consultas_de_integridad.sql
  - LOGICA DE NEGOCIO: EJECUTAR /queries/consultas_logicas_negocio.sql
  - LIMPIEZA: USAR /queries/scripts_limpieza.sql PARA REINICIO DEL SISTEMA.

> NOTAS:
  - TODAS LAS MODIFICACIONES DDL DEBEN APLICARSE ANTES DE LAS INSERCIONES DML.
  - EL ARCHIVO '03_DATOS_PRUEBA_AFTER_ALTERS.SQL' ASEGURA QUE LOS REGISTROS 
    CUMPLAN CON LAS RESTRICCIONES DEFINIDAS EN LA FASE DE ALTER.

**************************************************************************
[SISTEMA_LISTO_PARA_INICIALIZACION]
