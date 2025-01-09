-- Create database
CREATE DATABASE SampleDB
GO

USE SampleDB
GO

-- Create table
CREATE TABLE Employees
(
  employee_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  first_name NVARCHAR(100) NOT NULL,
  last_name NVARCHAR(100) NOT NULL,
  department NVARCHAR(50) NOT NULL,
  salary DECIMAL(15,2),
  hire_date DATE
);
