-- begin DDCDI_IMPORT_CONFIGURATION
create table DDCDI_IMPORT_CONFIGURATION (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    TRANSACTION_STRATEGY varchar(50) not null,
    ENTITY_CLASS varchar(255) not null,
    AD_HOC boolean,
    TEMPLATE_ID varchar(36),
    COMMENT_ longvarchar,
    DATE_FORMAT varchar(255),
    BOOLEAN_TRUE_VALUE varchar(255),
    BOOLEAN_FALSE_VALUE varchar(255),
    PRE_COMMIT_SCRIPT longvarchar,
    FILE_CHARSET varchar(255),
    --
    primary key (ID)
)^
-- end DDCDI_IMPORT_CONFIGURATION
-- begin DDCDI_IMPORT_ATTRIBUTE_MAPPER
create table DDCDI_IMPORT_ATTRIBUTE_MAPPER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CONFIGURATION_ID varchar(36) not null,
    MAPPER_MODE varchar(50) not null,
    ATTRIBUTE_TYPE varchar(50),
    ENTITY_ATTRIBUTE varchar(255),
    ASSOCIATION_LOOKUP_ATTRIBUTE varchar(255),
    FILE_COLUMN_NUMBER integer not null,
    FILE_COLUMN_ALIAS varchar(255),
    CUSTOM_ATTRIBUTE_BIND_SCRIPT longvarchar,
    --
    primary key (ID)
)^
-- end DDCDI_IMPORT_ATTRIBUTE_MAPPER
-- begin DDCDI_UNIQUE_CONFIGURATION_ATTRIBUTE
create table DDCDI_UNIQUE_CONFIGURATION_ATTRIBUTE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ENTITY_ATTRIBUTE varchar(255) not null,
    UNIQUE_CONFIGURATION_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end DDCDI_UNIQUE_CONFIGURATION_ATTRIBUTE
-- begin DDCDI_UNIQUE_CONFIGURATION
create table DDCDI_UNIQUE_CONFIGURATION (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    POLICY varchar(50) not null,
    IMPORT_CONFIGURATION_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end DDCDI_UNIQUE_CONFIGURATION
-- begin DDCDI_IMPORT_EXEC_DETAIL
create table DDCDI_IMPORT_EXEC_DETAIL (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    MESSAGE varchar(4000) not null,
    LEVEL_ varchar(50) not null,
    TIME_ timestamp not null,
    STACKTRACE longvarchar,
    IMPORT_EXEC_ID varchar(36) not null,
    DATA_ROW longvarchar,
    DATA_ROW_INDEX integer,
    ENTITY_INSTANCE longvarchar,
    CATEGORY varchar(50),
    --
    primary key (ID)
)^
-- end DDCDI_IMPORT_EXEC_DETAIL
-- begin DDCDI_IMPORT_EXEC
create table DDCDI_IMPORT_EXEC (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    FILE_ID varchar(36),
    STARTED_AT timestamp,
    FINISHED_AT timestamp,
    ENTITIES_PROCESSED integer,
    ENTITIES_IMPORT_SUCCESS integer,
    ENTITIES_IMPORT_VAL_ERROR integer,
    ENTITIES_PRE_COMMIT_SKIPPED integer,
    ENTITIES_UNIQUE_CONSTRAINT_SKIPPED integer,
    SUCCESS boolean not null,
    CONFIGURATION_ID varchar(36),
    --
    primary key (ID)
)^
-- end DDCDI_IMPORT_EXEC
