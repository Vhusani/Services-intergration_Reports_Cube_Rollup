CREATE DATABASE BI_ProjectDW
GO
USE BI_ProjectDW
GO
CREATE TABLE Dimstudent
(	
	ID int identity(1,1) primary key not null,
	alt_StudentID nvarchar(20),
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	busi_FK_CourseID nvarchar(20)
)

select * from FactMarks

CREATE TABLE DimCourseFacilitator
(
	ID int identity(1,1) primary key not null,
	alt_CourseID nvarchar(20),
	Course_Name varchar(100),
	NQF_Level int,
	busi_FK_FacilitatorID nvarchar(20),
	alt_FacilitatorID nvarchar(20),
	Facilitator_Name varchar(100)
)
CREATE TABLE FactMarks  
(
	ID int identity(1,1) primary key not null,
	alt_MarksID nvarchar(20),
	isInternational bit,
	Mark decimal(8,2),
	busi_FK_StudentID nvarchar(20),
	DimStudentID int foreign key references Dimstudent(ID),
	DimCFID int foreign key references DimCourseFacilitator(ID)
)