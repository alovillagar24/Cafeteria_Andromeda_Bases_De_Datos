**************************************************************************
*                                                                        *
*  [SYSTEM_ID: CAFETERIA_ANDROMEDA_DB]                                   *
*  [LAST_UPDATE: 2026-07-18]                                             *
*  [DOC_VERSION: FINAL_RELEASE]                                          *
*                                                                        *
**************************************************************************

> CONFIG_MANIFEST:
  - /schema    : DDL DEFINITIONS. [EXECUTE FIRST]
  - /data      : DML DATASETS. [EXECUTE AFTER ALTERS]
  - /queries   : BUSINESS LOGIC, INTEGRITY TESTS & CLEANUP SCRIPTS.
  - /diagrams  : ARCHITECTURE REFERENCE.

> DEPLOYMENT_SEQUENCE (MANDATORY):
  1. RUN /schema/01_create_tables.sql  (TABLE STRUCTURES)
  2. RUN /schema/02_alter_tables.sql    (CONSTRAINTS & MODIFICATIONS)
  3. RUN /data/01_catalogos_iniciales.sql (MASTER DATA)
  4. RUN /data/02_datos_prueba.sql        (TEST RECORDS)
  5. RUN /data/03_datos_prueba_after_alters.sql (POST-CONSTRAINT RECORDS)

> INTEGRITY_VERIFICATION:
  - SYSTEM INTEGRITY: RUN /queries/consultas_de_integridad.sql
  - BUSINESS LOGIC: RUN /queries/consultas_logicas_negocio.sql
  - CLEANUP: USE /queries/scripts_limpieza.sql FOR SYSTEM RESET.

> NOTES:
  - ALL DDL MODIFICATIONS MUST BE APPLIED BEFORE DML INSERTS.
  - THE '03_DATOS_PRUEBA_AFTER_ALTERS.SQL' ENSURES THAT RECORDS 
    COMPLY WITH THE CONSTRAINTS DEFINED IN THE ALTER PHASE.

**************************************************************************
[SYSTEM_READY_FOR_INITIALIZATION]
