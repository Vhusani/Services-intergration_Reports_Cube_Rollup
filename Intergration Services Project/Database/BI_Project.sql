CREATE DATABASE BI_Project
GO
USE BI_Project
GO
--NB:Execute the Script :)
CREATE SCHEMA Auckland
CREATE TABLE Auckland.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100)
)
CREATE TABLE Auckland.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null,
	FK_FacilitatorID int foreign key references Auckland.Course(CourseID)
)
CREATE TABLE Auckland.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_CourseID int foreign key references Auckland.Course(CourseID)
)
CREATE TABLE Auckland.Marks
(
	MarksID int identity(1,1) primary key not null,
	isInternational bit,
	Mark decimal(8,2),
	FK_StudentID int foreign key references Auckland.Student(StudentID)
)
GO
CREATE SCHEMA Stellenbosch
CREATE TABLE Stellenbosch.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100)
)
CREATE TABLE Stellenbosch.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null,
	FK_FacilitatorID int foreign key references Stellenbosch.Course(CourseID)
)
CREATE TABLE Stellenbosch.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_CourseID int foreign key references Stellenbosch.Course(CourseID)
)
CREATE TABLE Stellenbosch.Marks
(
	MarksID int identity(1,1) primary key not null,
	isInternational bit,
	Mark decimal(8,2),
	FK_StudentID int foreign key references Stellenbosch.Student(StudentID)
)
GO
CREATE SCHEMA Polokwane
CREATE TABLE Polokwane.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100)
)
CREATE TABLE Polokwane.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null,
	FK_FacilitatorID int foreign key references Polokwane.Course(CourseID)
)
CREATE TABLE Polokwane.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_CourseID int foreign key references Polokwane.Course(CourseID)
)
CREATE TABLE Polokwane.Marks
(
	MarksID int identity(1,1) primary key not null,
	isInternational bit,
	Mark decimal(8,2),
	FK_StudentID int foreign key references Polokwane.Student(StudentID)
)
GO
INSERT INTO Auckland.Facilitator VALUES ('Jaco')

INSERT INTO Auckland.Course VALUES ('BI', 6, (select FacilitatorID from Auckland.Facilitator WHERE Facilitator_Name like '%Jaco%'))

INSERT INTO Auckland.Student VALUES ('Vhusani','Libago', 'M', 9611056257087,'Vhusani.libago@gmail.com', 0711170307, (select CourseID from Auckland.Course WHERE Course_Name = 'BI' ))

INSERT INTO Auckland.Marks VALUES (80, 80, (select StudentID from Auckland.Student WHERE Student_Name = 'Vhusani' AND Student_Surname ='Libago'))

INSERT INTO Stellenbosch.Facilitator VALUES ('PD')

INSERT INTO Stellenbosch.Course VALUES ('MCSA', 5, (select FacilitatorID from Stellenbosch.Facilitator WHERE Facilitator_Name like '%PD%'))

INSERT INTO Stellenbosch.Student VALUES ('Jonathan','Browski', 'M', 9611056257087,'Jonathan.Browski@gmail.com', 0711170307, (select CourseID from Stellenbosch.Course WHERE Course_Name = 'MCSA' ))

INSERT INTO Stellenbosch.Marks VALUES (70, 86, (select StudentID from Stellenbosch.Student WHERE Student_Name = 'Jonathan' AND Student_Surname ='Browski'))

INSERT INTO Polokwane.Facilitator VALUES ('Lucine')

INSERT INTO Polokwane.Course VALUES ('CAD', 5, (select FacilitatorID from Polokwane.Facilitator WHERE Facilitator_Name like '%Lucine%'))

INSERT INTO Polokwane.Student VALUES ('Lizzy','Plow', 'F', 9611056257087,'Lizzy.Plow@gmail.com', 0711170307, (select CourseID from Polokwane.Course WHERE Course_Name = 'CAD' ))

INSERT INTO Polokwane.Marks VALUES (70, 86, (select StudentID from Polokwane.Student WHERE Student_Name = 'Lizzy' AND Student_Surname ='Plow'))