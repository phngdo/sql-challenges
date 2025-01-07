-- Create database
CREATE DATABASE SampleDB
GO

USE SampleDB
GO

-- Create tables
CREATE TABLE Students 
(
	Student_ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Full_Name NVARCHAR(150) NOT NULL,
	Age TINYINT NOT NULL,
	Major NVARCHAR(150) NOT NULL,
	GPA DECIMAL(4,2),
	Enrollment_Date DATE,
	Graduation_Year SMALLINT
)

-- Insert values
INSERT INTO Students (Full_Name, Age, Major, GPA, Enrollment_Date, Graduation_Year)
VALUES 
('John Doe', 20, 'Computer Sci', 3.6, '2018-08-15', 2024),
('Jane Smith', 22, 'Mathematics', NULL, '2020-09-12', 2023),
('Emily Johnson', 21, 'Physics', 3.4, NULL, 2024),
('Michael Brown', 20, 'Computer Sci', 3.9, '2023-02-10', NULL),
('Olivia White', 23, 'Engineering', 3.2, '2021-11-21', 20);
