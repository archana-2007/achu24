-- Create a new database
CREATE DATABASE Factory;
GO

-- Use the Factory database
USE Factory;
GO

-- Create the Product table
CREATE TABLE Product (
    ProductID INT NOT NULL,
    Name VARCHAR(50),
    Price MONEY,
    PRIMARY KEY (ProductID)
);
GO

-- Insert data into the Product table
INSERT INTO Product (ProductID, Name, Price)
VALUES (1, 'lux', 44.50),
       (2, 'pen', 14.50);
GO

-- Select all data from the Product table
SELECT * FROM Product;
GO

-- Create the ORDERS table
CREATE TABLE ORDERS (
    OID INT NOT NULL,
    ORDER_DATE DATETIME NOT NULL,
    CUSTOMER_ID INT NOT NULL,
    AMOUNT DECIMAL(18, 2),
    PRIMARY KEY (OID) -- Adding a primary key for good practice
);
GO

-- Insert data into the ORDERS table
INSERT INTO ORDERS (OID, ORDER_DATE, CUSTOMER_ID, AMOUNT)
VALUES (102, '2009-10-08 00:00:00', 3, 3000.00),
       (100, '2009-10-08 00:00:00', 3, 1500.00);
GO

-- Select all data from the ORDERS table
SELECT * FROM ORDERS;
GO

-- Create logins for users
CREATE LOGIN Sanjay1
WITH PASSWORD = 'San@1234';
GO

CREATE LOGIN Shekar1
WITH PASSWORD = 'S3cure@2024!';
GO

CREATE LOGIN Wasim1
WITH PASSWORD = 'Wasim@2023!';
GO

-- Create database users for logins
CREATE USER Sanjay1 FOR LOGIN Sanjay1;
GO

-- Create a new role
CREATE ROLE Chairmans;
GO

-- Grant permissions to the role
GRANT SELECT, INSERT, UPDATE, DELETE
ON SCHEMA::dbo -- Correct schema reference (default is dbo)
TO Chairmans;
GO