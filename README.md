**************************************************************************
*                                                                        *
*  PROYECTO          : Cafeteria_Universitaria                           *
*  ESTUDIANTE        : Alonso Villanueva                                 *
*  ORGANIZACIÓN/CASO : Café Andrómeda                                    *
*  FECHA             : 2026-07-18                                        *
*                                                                        *
*  [ID_SISTEMA: CAFETERIA_ANDROMEDA_DB]                                  *
*  [VERSION_DOC: FINAL_RELEASE]                                          *
*                                                                        *
**************************************************************************

> INTRODUCCION:
  Este repositorio contiene la estructura, el diseño y la lógica de negocio para 
  la base de datos de "Cafetería Andrómeda". El proyecto ha sido desarrollado bajo 
  un enfoque modular y profesional, garantizando la integridad de los datos y el 
  cumplimiento de las reglas de negocio establecidas. A través de una jerarquía 
  de archivos claramente definida, este sistema facilita tanto el despliegue 
  técnico como el análisis operativo, asegurando un entorno de gestión robusto, 
  escalable y listo para su implementación.

> MANIFIESTO_CONFIGURACION:
  - /schema          : DEFINICIONES DDL.
  - /procedures      : LOGICA DE PROCEDIMIENTOS ALMACENADOS.
  - /programmability : TRIGGERS Y LÓGICA AUTOMATIZADA.
  - /data            : CONJUNTOS DE DATOS DML.
  - /queries         : PRUEBAS DE INTEGRIDAD Y REPORTES.
  - /diagrams        : REFERENCIA DE ARQUITECTURA.

> SECUENCIA_DESPLIEGUE (PASOS DE IMPLEMENTACION):
  1. CREACION: Ejecutar 'CREATE DATABASE' para inicializar el entorno.
  2. ESTRUCTURA: Ejecutar /schema/01_create_tables.sql para definir tablas.
  3. RESTRICCIONES: Ejecutar /schema/02_alter_tables.sql para claves y reglas.
  4. PROGRAMACION: Ejecutar scripts en /procedures/ y /programmability/01_triggers.sql.
  5. DATOS MAESTROS: Ejecutar /data/01_catalogos_iniciales.sql.
  6. INSERCION OPERATIVA: Ejecutar /data/02_datos_prueba.sql y 03_datos_prueba_after_alters.sql.

> VERIFICACION_INTEGRIDAD:
  - INTEGRIDAD: EJECUTAR /queries/consultas_de_integridad.sql
  - NEGOCIO: EJECUTAR /queries/consultas_logicas_negocio.sql
  - LIMPIEZA: USAR /queries/scripts_limpieza.sql PARA RESETEO.

> NOTAS:
  - TODAS LAS MODIFICACIONES DDL DEBEN APLICARSE ANTES DE LAS INSERCIONES DML.
  - EL ARCHIVO '03_DATOS_PRUEBA_AFTER_ALTERS.SQL' ASEGURA QUE LOS REGISTROS 
    CUMPLAN CON LAS RESTRICCIONES DEFINIDAS EN LA FASE DE ALTER.

**************************************************************************
[SISTEMA_LISTO_PARA_INICIALIZACION]
