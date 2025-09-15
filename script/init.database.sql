This code will remove the existing database of the same name and create the following database.so please ensure you have the proper backups

USE master;
Go
 IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
 BEGIN
     ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
     DROP DATABASE DataWarehouse;
 END;
 GO
--create warehouse
create database DataWarehouse;

use DataWarehouse;
 --create schemas
create schema bronze;
go
create schema silver;
go
create schema gold;
go
