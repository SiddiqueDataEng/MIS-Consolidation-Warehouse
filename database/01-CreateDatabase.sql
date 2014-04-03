/*
 * MIS Consolidation Warehouse
 * Project #55 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, SSIS
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'MIS_DW')
BEGIN
    ALTER DATABASE MIS_DW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE MIS_DW;
END
GO

CREATE DATABASE MIS_DW
ON PRIMARY
(
    NAME = 'MIS_DW_Data',
    FILENAME = 'C:\SQLData\MIS_DW_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'MIS_DW_Log',
    FILENAME = 'C:\SQLData\MIS_DW_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE MIS_DW SET RECOVERY SIMPLE;
ALTER DATABASE MIS_DW SET AUTO_UPDATE_STATISTICS ON;
GO

USE MIS_DW;
GO

PRINT 'Database MIS_DW created successfully';
PRINT 'Project: MIS Consolidation Warehouse';
PRINT 'Description: Multiple MIS systems unification';
GO
