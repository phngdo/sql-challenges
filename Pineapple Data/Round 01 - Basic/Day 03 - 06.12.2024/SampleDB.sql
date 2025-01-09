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

-- Insert value
INSERT INTO Employees (first_name, last_name, department, salary, hire_date)
VALUES ('John', 'Doe', 'IT', 50000, '2020-01-01'),
       ('Jane', 'Smith', 'HR', 45000, '2019-06-15'),
       ('Emily', 'Johnson', 'Finance', NULL, '2021-05-22'),
       ('Michael', 'Brown', 'IT', 60000, '2022-02-18'),
       ('Sarah', 'Davis', 'HR', NULL, '2020-07-30'),
       ('Steve', 'Turner', 'Finance', 70000, '2019-11-12'),
       ('Rachel', 'White', 'IT', 55000, NULL),
       ('Andrew', 'Lee', 'HR', 48000, '2022-03-25'),
       ('Daniel', 'Martin', 'Finance', 65000, '2021-08-19'),
       ('Jessica', 'Harris', 'IT', 53000, '2023-01-09');
