
/*

Script Purpose:
Initialise data warehouse and the schemas for its layers. 

WARNING: 

if it already exists, the database 'data_warehouse' will be dropped and recreated.


*/


USE master;
GO


-- drop and recreate 'data_watehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'data_warehouse')
BEGIN
	ALTER DATABASE data_warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE data_warehouse;
END;
GO

CREATE DATABASE data_warehouse;
GO

USE data_warehouse;
GO


CREATE SCHEMA bronze;

GO
CREATE SCHEMA silver;

GO
CREATE SCHEMA gold;

GO




