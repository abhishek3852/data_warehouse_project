/*

-------------------------------------------------------
eate Database and Schema
-------------------------------------------------------
Script Purpose:
The script's purpose is to create a database in my system named data_warehouse . Additionally, the script sets up three schemas within the database: 'bronze', 'silver ', and 'gold'.


*/
USE master;

--Creating a database that doesn't exist in our system
CREATE DATABASE data_warehouse;

USE data_warehouse

--Creating a schema in the database
CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;

