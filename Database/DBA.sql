CREATE DATABASE ctu_Information
GO
USE ctu_Information
GO
--NB:Execute the Script :)
/****************************************************************************************************************/
/************************************** CREATE DATABASE TABLE & SCHEMAS *****************************************/
/****************************************************************************************************************/
CREATE SCHEMA Auckland
GO
CREATE TABLE Auckland.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE Auckland.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
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
	Fk_Internationals int foreign key references Auckland.Internationals(IntID),
)

select * from Auckland.Student 
GO

CREATE TABLE Auckland.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references Auckland.Student(StudentID)
)
CREATE TABLE Auckland.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references Auckland.Marks(MarksID)
)
CREATE TABLE Auckland.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references Auckland.Learnin_Units(LUID),
	Fk_Student int foreign key references Auckland.Student(StudentID)
)
CREATE TABLE Auckland.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references Auckland.Course(CourseID)
)
GO
CREATE SCHEMA Boksburg
GO
CREATE TABLE Boksburg.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE Boksburg.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
)
CREATE TABLE Boksburg.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	Fk_Internationals int foreign key references Boksburg.Internationals(IntID),
)
CREATE TABLE Boksburg.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references Boksburg.Student(StudentID)
)
CREATE TABLE Boksburg.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references Boksburg.Marks(MarksID)
)
CREATE TABLE Boksburg.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references Boksburg.Learnin_Units(LUID),
	Fk_Student int foreign key references Boksburg.Student(StudentID)
)
CREATE TABLE Boksburg.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references Boksburg.Course(CourseID)
)
GO
CREATE SCHEMA Pretoria
GO

CREATE TABLE Pretoria.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE Pretoria.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
)
CREATE TABLE Pretoria.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	Fk_Internationals int foreign key references Pretoria.Internationals(IntID),
)
CREATE TABLE Pretoria.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references Pretoria.Student(StudentID)
)
CREATE TABLE Pretoria.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references Pretoria.Marks(MarksID)
)
CREATE TABLE Pretoria.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references Pretoria.Learnin_Units(LUID),
	Fk_Student int foreign key references Pretoria.Student(StudentID)
)
CREATE TABLE Pretoria.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references Pretoria.Course(CourseID)
)
GO
CREATE SCHEMA Roodepoort
GO
CREATE TABLE Roodepoort.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),	
)
CREATE TABLE Roodepoort.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
)
CREATE TABLE Roodepoort.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	Fk_Internationals int foreign key references Roodepoort.Internationals(IntID),
)
CREATE TABLE Roodepoort.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references Roodepoort.Student(StudentID)
)
CREATE TABLE Roodepoort.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references Roodepoort.Marks(MarksID)
)
CREATE TABLE Roodepoort.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references Roodepoort.Learnin_Units(LUID),
	Fk_Student int foreign key references Roodepoort.Student(StudentID)
)
CREATE TABLE Roodepoort.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references Roodepoort.Course(CourseID)
)
GO
CREATE SCHEMA Vereeniging
GO

CREATE TABLE Vereeniging.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE Vereeniging.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
)

CREATE TABLE Vereeniging.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	Fk_Internationals int foreign key references Vereeniging.Internationals(IntID),
)
CREATE TABLE Vereeniging.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references Vereeniging.Student(StudentID)
)
CREATE TABLE Vereeniging.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references Vereeniging.Marks(MarksID)
)
CREATE TABLE Vereeniging.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references Vereeniging.Learnin_Units(LUID),
	Fk_Student int foreign key references Vereeniging.Student(StudentID)
)
CREATE TABLE Vereeniging.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references Vereeniging.Course(CourseID)
)
GO
CREATE SCHEMA Sandton
GO
CREATE TABLE Sandton.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE Sandton.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
)
CREATE TABLE Sandton.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	Fk_Internationals int foreign key references Sandton.Internationals(IntID),
)
CREATE TABLE Sandton.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references Sandton.Student(StudentID)
)
CREATE TABLE Sandton.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references Sandton.Marks(MarksID)
)
CREATE TABLE Sandton.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references Sandton.Learnin_Units(LUID),
	Fk_Student int foreign key references Sandton.Student(StudentID)
)
CREATE TABLE Sandton.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references Sandton.Course(CourseID)
)
GO
CREATE SCHEMA PE
GO
CREATE TABLE PE.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE PE.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
)
CREATE TABLE PE.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	Fk_Internationals int foreign key references PE.Internationals(IntID),
)
CREATE TABLE PE.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references PE.Student(StudentID)
)

CREATE TABLE PE.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references PE.Marks(MarksID)
)
CREATE TABLE PE.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references PE.Learnin_Units(LUID),
	Fk_Student int foreign key references PE.Student(StudentID)
)
CREATE TABLE PE.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references PE.Course(CourseID)
)
GO
CREATE SCHEMA Potchefstroom
GO
CREATE TABLE Potchefstroom.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE Potchefstroom.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
)

CREATE TABLE Potchefstroom.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	Fk_Internationals int foreign key references Potchefstroom.Internationals(IntID),
)
CREATE TABLE Potchefstroom.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references Potchefstroom.Student(StudentID)
)
CREATE TABLE Potchefstroom.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references Potchefstroom.Marks(MarksID)
)
CREATE TABLE Potchefstroom.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references Potchefstroom.Learnin_Units(LUID),
	Fk_Student int foreign key references Potchefstroom.Student(StudentID)
)
CREATE TABLE Potchefstroom.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references Potchefstroom.Course(CourseID)
)
GO
CREATE SCHEMA Bloemfontein
GO
CREATE TABLE Bloemfontein.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE Bloemfontein.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
)
CREATE TABLE Bloemfontein.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	Fk_Internationals int foreign key references Bloemfontein.Internationals(IntID),
)
CREATE TABLE Bloemfontein.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references Bloemfontein.Student(StudentID)
)
CREATE TABLE Bloemfontein.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references Bloemfontein.Marks(MarksID)
)
CREATE TABLE Bloemfontein.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references Bloemfontein.Learnin_Units(LUID),
	Fk_Student int foreign key references Bloemfontein.Student(StudentID)
)
CREATE TABLE Bloemfontein.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references Bloemfontein.Course(CourseID)
)
GO
CREATE SCHEMA CPT
GO
CREATE TABLE CPT.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE CPT.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
)
CREATE TABLE CPT.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	Fk_Internationals int foreign key references CPT.Internationals(IntID),
)
CREATE TABLE CPT.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references CPT.Student(StudentID)
)
CREATE TABLE CPT.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references CPT.Marks(MarksID)
)
CREATE TABLE CPT.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references CPT.Learnin_Units(LUID),
	Fk_Student int foreign key references CPT.Student(StudentID)
)
CREATE TABLE CPT.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references CPT.Course(CourseID)
)
GO
CREATE SCHEMA Stellenbosch
GO
CREATE TABLE Stellenbosch.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE Stellenbosch.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
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
	Fk_Internationals int foreign key references Stellenbosch.Internationals(IntID),
)
CREATE TABLE Stellenbosch.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references Stellenbosch.Student(StudentID)
)
CREATE TABLE Stellenbosch.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references Stellenbosch.Marks(MarksID)
)
CREATE TABLE Stellenbosch.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references Stellenbosch.Learnin_Units(LUID),
	Fk_Student int foreign key references Stellenbosch.Student(StudentID)
)
CREATE TABLE Stellenbosch.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references Stellenbosch.Course(CourseID)
)
GO
CREATE SCHEMA Nelspruit
GO
CREATE TABLE Nelspruit.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE Nelspruit.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
)
CREATE TABLE Nelspruit.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	Fk_Internationals int foreign key references Nelspruit.Internationals(IntID),
)
CREATE TABLE Nelspruit.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references Nelspruit.Student(StudentID)
)

CREATE TABLE Nelspruit.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references Nelspruit.Marks(MarksID)
)
CREATE TABLE Nelspruit.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references Nelspruit.Learnin_Units(LUID),
	Fk_Student int foreign key references Nelspruit.Student(StudentID)
)
CREATE TABLE Nelspruit.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references Nelspruit.Course(CourseID)
)
GO
CREATE SCHEMA Durban
GO
CREATE TABLE Durban.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE Durban.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
)
CREATE TABLE Durban.Student 
(
	StudentID int identity(1,1) primary key not null,
	Student_Name varchar(100),
	Student_Surname varchar(100),
	Gender char(1),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	Fk_Internationals int foreign key references Durban.Internationals(IntID),
)
CREATE TABLE Durban.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references Durban.Student(StudentID)
)
CREATE TABLE Durban.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references Durban.Marks(MarksID)
)
CREATE TABLE Durban.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references Durban.Learnin_Units(LUID),
	Fk_Student int foreign key references Durban.Student(StudentID)
)
CREATE TABLE Durban.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references Durban.Course(CourseID)
)
GO
CREATE SCHEMA Polokwane
GO
CREATE TABLE Polokwane.Internationals
(
	IntID int identity(1,1) primary key not null,
	International nvarchar(100), 
	Mark decimal(8,2),
	
)
CREATE TABLE Polokwane.Marks
(	
	MarksID int primary key identity(1,1) not null,
	Formative_Marks decimal(3), 
	Summative_Marks decimal(3),
	Year_End_Avarage decimal(3)
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
	Fk_Internationals int foreign key references Polokwane.Internationals(IntID),
)
CREATE TABLE Polokwane.Parent
(
	ParentID int identity(1,1) primary key not null, 
	Parent_Name varchar(100),
	Parent_Surname varchar(100),
	Identity_number char(13),
	Email varchar(100),
	Phone_Number char(10),
	FK_Student int foreign key references Polokwane.Student(StudentID)
)

CREATE TABLE Polokwane.Learnin_Units
(
	LUID int identity(1,1) primary key not null,
	Learning_Unit_Name nvarchar(100) null,
	Formative_Description nvarchar(100),
	Summative_Description nvarchar(100),
	FK_MarksID int foreign key references Polokwane.Marks(MarksID)
)
CREATE TABLE Polokwane.Course
(
	CourseID int identity(1,1) primary key not null,
	Course_Name varchar(100) not null,
	NQF_Level int not null, 
	FK_Learning_Units int foreign key references Polokwane.Learnin_Units(LUID),
	Fk_Student int foreign key references Polokwane.Student(StudentID)
)
CREATE TABLE Polokwane.Facilitator
(
	FacilitatorID int identity(1,1) primary key not null,
	Facilitator_Name varchar(100),
	Campus varchar(20),
	FK_Course int foreign key references Polokwane.Course(CourseID)
)
GO
/**************************************************EMPLOYEES TABLES*************************************/
create table Auckland.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(100),
Employee_Surname varchar(100)
)
create table Boksburg.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(100),
Employee_Surname varchar(100)
)
create table Pretoria.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(100),
Employee_Surname varchar(100)
)
create table Roodepoort.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(100),
Employee_Surname varchar(100)
)

create table Sandton.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(100),
Employee_Surname varchar(100)
)
create table Vereeniging.Employees
(
ID int identity(1,1) primary key not null,
Employee_Name varchar(25),
Employee_Surname varchar(25)
)
create table PE.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(100),
Employee_Surname varchar(100)
)
create table Potchefstroom.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(100),
Employee_Surname varchar(100)
)
create table CPT.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(100),
Employee_Surname varchar(100)
)
create table Stellenbosch.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(100),
Employee_Surname varchar(100)
)
create table Nelspruit.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(25),
Employee_Surname varchar(25)
)
create table Durban.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(100),
Employee_Surname varchar(100)
)
create table Polokwane.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(100),
Employee_Surname varchar(100)
)
create table Bloemfontein.Employees
(
EmployeesID int identity(1,1) primary key not null,
Employee_Name varchar(100),
Employee_Surname varchar(100)
)
GO
create table LOG_In
(
	Logid int identity(1,1) primary key not null,
	UserName nvarchar(40) not null,
	[Password] nvarchar(40) not null,
)

create table Access_Campus
(
	accessINT int identity(1,1) primary key not null,
	accessName varchar(30) null,
	accessPassword char(25) null
)
GO
/****************************************************************************************************************/
/****************************************** INSERT STATEMENTS ***************************************************/
/****************************************************************************************************************/
INSERT INTO LOG_In
VALUES ('Admin', 'Admin@123'),
       ('Facili', 'Facili@123')
SELECT * FROM LOG_In
INSERT INTO Access_Campus
VALUES	('Auckland', 'Auckland@123'),
		('Boksburg', 'Boksburg@123'),
		('Pretoria', 'Pretoria@123'),
		('Roodepoort', 'Roodepoort@123'),
		('Sandton', 'Sandton@123'),
		('Vereeniging', 'Vereeniging@123'),
		('Port Elizabeth', 'PE@123'),
		('Potchefstroom', 'Potchestroom@123'),
		('Cape Town', 'CPT@123'),
		('Stellenbosch', 'Stellenbosch@123'),
		('Nelspruit', 'Nelspruit@123'),
		('Durban', 'Durban@123'),
		('Polokwane', 'Polokwane@123')
SELECT * FROM Access_Campus
INSERT INTO Auckland.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)
SELECT * FROM Auckland.Course
INSERT INTO Auckland.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)
SELECT * FROM Auckland.Marks
GO
INSERT INTO Auckland.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('Hovar', 'Bloemfontein', NULL),
	    ('Nick', 'Bloemfontein',  NULL),
		('Luciene', 'Mnrt',  NULL),
		('Monate', 'Cheke',  NULL)

INSERT INTO Auckland.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)

INSERT INTO Auckland.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO Auckland.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('Violet','Pink', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Gerald','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Chipmuk','Game', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Will','Sniff Da Coke', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO Auckland.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Big','Shot', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('Kendrick','Lamar', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Jay','Cole', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('Travis','Scott', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO Auckland.Employees (Employee_Name, Employee_Surname)
VALUES  ('Anton', 'Conner'),
		('One', 'Blue'),
		('Blue', 'Velvet'),
		('Beyonce', 'Monkey'),
		('Aka', 'Black'),
		('Rick', 'Riky'),
		('Mlazi', 'Shirt'),
		('Durbs', 'Loud'),
		('Kaap', 'Stad'),
		('Micheal', 'MCGinger'),
		('Lool', 'No'),
		('Action', 'American'),
		('Flying', 'Dead'),
		('Awee', 'Soil'),
		('Mase', 'kind'),
		('yebo', 'not')

INSERT INTO Boksburg.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)

INSERT INTO Boksburg.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO Boksburg.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('MRyelow', 'Bloemfontein', NULL),
	    ('Cars', 'Dock',  NULL),
		('Jimmy', 'Stan',  NULL),
		('John', 'Satan',  NULL)

INSERT INTO Boksburg.Internationals (International, Mark)
VALUES	(70463, 789),
		(70467, 890),
		(30897, 450),
		(30455, 777)

INSERT INTO Boksburg.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO Boksburg.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('Violet','Libago', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Black','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Alvin','Green', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Will','Sniff', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO Boksburg.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Vhusani','Libago', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('Brawl','Pokemon', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Pikapika','chuu', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('One','Time', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO Boksburg.Employees (Employee_Name, Employee_Surname)
VALUES  ('Sarah', 'Conner'),
		('One', 'Blue'),
		('Gerald', 'Velvet'),
		('Donkey', 'Monkey'),
		('White', 'Black'),
		('Gone', 'Far'),
		('Bad', 'Shirt'),
		('Laugh', 'Loud'),
		('Steven', 'Smirth'),
		('Micheal', 'Ginger'),
		('okay', 'No'),
		('Horror', 'American'),
		('Walking', 'Dead'),
		('Soue', 'Soil'),
		('Bald', 'Shoes'),
		('Then', 'Done')

INSERT INTO Bloemfontein.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)

INSERT INTO Bloemfontein.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO Bloemfontein.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('Hovar', 'Bloemfontein', NULL),
	    ('Nick', 'Bloemfontein',  NULL),
		('Luciene', 'Mnrt',  NULL),
		('Monate', 'Cheke',  NULL)

INSERT INTO Bloemfontein.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)

INSERT INTO Bloemfontein.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO Bloemfontein.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('Violet','Pink', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Gerald','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Chipmuk','Game', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Will','Sniff Da Coke', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO Bloemfontein.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Big','Shot', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('Kendrick','Lamar', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Jay','Cole', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('Travis','Scott', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO Bloemfontein.Employees (Employee_Name, Employee_Surname)
VALUES  ('Anton', 'Conner'),
		('One', 'Blue'),
		('Blue', 'Velvet'),
		('Beyonce', 'Monkey'),
		('Aka', 'Black'),
		('Rick', 'Riky'),
		('Mlazi', 'Shirt'),
		('Durbs', 'Loud'),
		('Kaap', 'Stad'),
		('Micheal', 'MCGinger'),
		('Lool', 'No'),
		('Action', 'American'),
		('Flying', 'Dead'),
		('Awee', 'Soil'),
		('Mase', 'kind'),
		('yebo', 'not')

INSERT INTO Pretoria.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)

INSERT INTO Pretoria.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO Pretoria.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('Kenl', 'Smallo', NULL),
	    ('Judn', 'Bloemfontein',  NULL),
		('Erad', 'global',  NULL),
		('Musil', 'gokfd',  NULL)

INSERT INTO Pretoria.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)
SELECT * FROM Pretoria.Internationals
INSERT INTO Pretoria.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#',NULL),
		('Windows Forms and WPF',NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO Pretoria.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('tery','yggf', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('weal','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('bean','Green', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('colo','Sniff', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO Pretoria.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Drake','jew', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('Qauer','Pokemon', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Mishool','chuu', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('Cool','Time', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO Pretoria.Employees (Employee_Name, Employee_Surname)
VALUES  ('eerw', 'Conner'),
		('ugh', 'Blue'),
		('frtty', 'Velvet'),
		('ew7y', 'Monkey'),
		('jso', 'Black'),
		('poye', 'Far'),
		('qwpo', 'Shirt'),
		('bvua', 'Loud'),
		('etyu', 'Smirth'),
		('eatr', 'Ginger'),
		('rteb', 'No'),
		('ugk', 'American'),
		('sdfrt', 'Dead'),
		('weyf', 'Soil'),
		('rtewe', 'Shoes'),
		('werte', 'Done')

INSERT INTO Roodepoort.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)

INSERT INTO Roodepoort.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO Roodepoort.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('yurt', 'Bloemfontein', NULL),
	    ('rtyu', 'Bloemfontein',  NULL),
		('dgh', 'Polokwane',  NULL),
		('hfdghd', 'Stellenbosch',  NULL)

INSERT INTO Roodepoort.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)

INSERT INTO Roodepoort.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO Roodepoort.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('sffer','Libago', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('fgs','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Aewdlvin','Green', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('dffs','Sniff', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO Roodepoort.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('sdsdf','sdf', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('asdf','adf', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('wrt','qrty', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('One','Time', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO Roodepoort.Employees (Employee_Name, Employee_Surname)
VALUES  ('Come', 'Conner'),
		('here', 'Blue'),
		('man', 'Velvet'),
		('Iam', 'Monkey'),
		('Tired', 'Black'),
		('Off', 'Far'),
		('Inserting', 'Shirt'),
		('Data', 'Loud'),
		('Into', 'Smirth'),
		('Thiss', 'Ginger'),
		('Thing', 'No'),
		('woww', 'American'),
		('Walking', 'Dead'),
		('Square', 'Soil'),
		('Pass', 'Shoes'),
		('alright', 'Done')

INSERT INTO Sandton.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)

INSERT INTO Sandton.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO Sandton.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('Jacobus', 'Bloemfontein', NULL),
	    ('Jacobus', 'Bloemfontein',  NULL),
		('Luciene', 'Polokwane',  NULL),
		('Dazzie', 'Stellenbosch',  NULL)

INSERT INTO Sandton.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)

INSERT INTO Sandton.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO Sandton.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('Violet','Libago', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Black','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Alvin','Green', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Will','Sniff', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO Sandton.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Vhusani','Libago', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('Brawl','Pokemon', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Pikapika','chuu', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('One','Time', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO Sandton.Employees (Employee_Name, Employee_Surname)
VALUES  ('Sarah', 'Conner'),
		('One', 'Blue'),
		('Gerald', 'Velvet'),
		('Donkey', 'Monkey'),
		('White', 'Black'),
		('Gone', 'Far'),
		('Bad', 'Shirt'),
		('Laugh', 'Loud'),
		('Steven', 'Smirth'),
		('Micheal', 'Ginger'),
		('okay', 'No'),
		('Horror', 'American'),
		('Walking', 'Dead'),
		('Soue', 'Soil'),
		('Bald', 'Shoes'),
		('Then', 'Done')

INSERT INTO Vereeniging.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)

INSERT INTO Vereeniging.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO Vereeniging.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('Jacobus', 'Bloemfontein', NULL),
	    ('Jacobus', 'Bloemfontein',  NULL),
		('Luciene', 'Polokwane',  NULL),
		('Dazzie', 'Stellenbosch',  NULL)

INSERT INTO Vereeniging.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)

INSERT INTO Vereeniging.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO Vereeniging.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('Violet','Libago', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Black','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Alvin','Green', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Will','Sniff', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO Vereeniging.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Vhusani','Libago', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('Brawl','Pokemon', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Pikapika','chuu', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('One','Time', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO Vereeniging.Employees (Employee_Name, Employee_Surname)
VALUES  ('Sarah', 'Conner'),
		('One', 'Blue'),
		('Gerald', 'Velvet'),
		('Donkey', 'Monkey'),
		('White', 'Black'),
		('Gone', 'Far'),
		('Bad', 'Shirt'),
		('Laugh', 'Loud'),
		('Steven', 'Smirth'),
		('Micheal', 'Ginger'),
		('okay', 'No'),
		('Horror', 'American'),
		('Walking', 'Dead'),
		('Soue', 'Soil'),
		('Bald', 'Shoes'),
		('Then', 'Done')

INSERT INTO PE.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)

INSERT INTO PE.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO PE.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('Jacobus', 'Bloemfontein', NULL),
	    ('Jacobus', 'Bloemfontein',  NULL),
		('Luciene', 'Polokwane',  NULL),
		('Dazzie', 'Stellenbosch',  NULL)

INSERT INTO PE.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)

INSERT INTO PE.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO PE.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('Violet','Libago', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Black','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Alvin','Green', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Will','Sniff', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO PE.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Vhusani','Libago', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('Brawl','Pokemon', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Pikapika','chuu', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('One','Time', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO PE.Employees (Employee_Name, Employee_Surname)
VALUES  ('Sarah', 'Conner'),
		('One', 'Blue'),
		('Gerald', 'Velvet'),
		('Donkey', 'Monkey'),
		('White', 'Black'),
		('Gone', 'Far'),
		('Bad', 'Shirt'),
		('Laugh', 'Loud'),
		('Steven', 'Smirth'),
		('Micheal', 'Ginger'),
		('okay', 'No'),
		('Horror', 'American'),
		('Walking', 'Dead'),
		('Soue', 'Soil'),
		('Bald', 'Shoes'),
		('Then', 'Done')

INSERT INTO Potchefstroom.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)

INSERT INTO Potchefstroom.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO Potchefstroom.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('Jacobus', 'Bloemfontein', NULL),
	    ('Jacobus', 'Bloemfontein',  NULL),
		('Luciene', 'Polokwane',  NULL),
		('Dazzie', 'Stellenbosch',  NULL)

INSERT INTO Potchefstroom.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)

INSERT INTO Potchefstroom.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO Potchefstroom.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('Violet','Libago', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Black','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Alvin','Green', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Will','Sniff', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO Potchefstroom.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Vhusani','Libago', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('Brawl','Pokemon', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Pikapika','chuu', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('One','Time', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO Potchefstroom.Employees (Employee_Name, Employee_Surname)
VALUES  ('Sarah', 'Conner'),
		('One', 'Blue'),
		('Gerald', 'Velvet'),
		('Donkey', 'Monkey'),
		('White', 'Black'),
		('Gone', 'Far'),
		('Bad', 'Shirt'),
		('Laugh', 'Loud'),
		('Steven', 'Smirth'),
		('Micheal', 'Ginger'),
		('okay', 'No'),
		('Horror', 'American'),
		('Walking', 'Dead'),
		('Soue', 'Soil'),
		('Bald', 'Shoes'),
		('Then', 'Done')

INSERT INTO CPT.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)

INSERT INTO CPT.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO CPT.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('Jacobus', 'Bloemfontein', NULL),
	    ('Jacobus', 'Bloemfontein',  NULL),
		('Luciene', 'Polokwane',  NULL),
		('Dazzie', 'Stellenbosch',  NULL)

INSERT INTO CPT.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)

INSERT INTO CPT.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO CPT.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('Violet','Libago', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Black','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Alvin','Green', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Will','Sniff', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO CPT.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Vhusani','Libago', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('Brawl','Pokemon', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Pikapika','chuu', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('One','Time', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO CPT.Employees (Employee_Name, Employee_Surname)
VALUES  ('Sarah', 'Conner'),
		('One', 'Blue'),
		('Gerald', 'Velvet'),
		('Donkey', 'Monkey'),
		('White', 'Black'),
		('Gone', 'Far'),
		('Bad', 'Shirt'),
		('Laugh', 'Loud'),
		('Steven', 'Smirth'),
		('Micheal', 'Ginger'),
		('okay', 'No'),
		('Horror', 'American'),
		('Walking', 'Dead'),
		('Soue', 'Soil'),
		('Bald', 'Shoes'),
		('Then', 'Done')

INSERT INTO Stellenbosch.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)

INSERT INTO Stellenbosch.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO Stellenbosch.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('Jacobus', 'Bloemfontein', NULL),
	    ('Jacobus', 'Bloemfontein',  NULL),
		('Luciene', 'Polokwane',  NULL),
		('Dazzie', 'Stellenbosch',  NULL)

INSERT INTO Stellenbosch.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)

INSERT INTO Stellenbosch.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO Stellenbosch.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('Violet','Libago', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Black','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Alvin','Green', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Will','Sniff', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO Stellenbosch.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Black','Libago', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('Green','Pokemon', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Blue','chuu', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('Yellow','Time', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO Stellenbosch.Employees (Employee_Name, Employee_Surname)
VALUES  ('Sarah', 'Conner'),
		('One', 'Blue'),
		('Gerald', 'Velvet'),
		('Steven', 'Smirth'),
		('Micheal', 'Ginger'),
		('okay', 'No'),
		('Horror', 'American'),
		('Walking', 'Dead'),
		('Donkey', 'Monkey'),
		('White', 'Black'),
		('Gone', 'Far'),
		('Bad', 'Shirt'),
		('Laugh', 'Loud'),
		('Soue', 'Soil'),
		('Bald', 'Shoes'),
		('Then', 'Done')

INSERT INTO Nelspruit.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)
	   
INSERT INTO Nelspruit.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO Nelspruit.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('Kappa', 'Bloemfontein', NULL),
	    ('Nike', 'Bloemfontein',  NULL),
		('Converse', 'Polokwane',  NULL),
		('Adddas', 'Stellenbosch',  NULL)

INSERT INTO Nelspruit.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)

INSERT INTO Nelspruit.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO Nelspruit.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('Jiggy','Libago', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Nasty','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Emtee','Green', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Cassper','Sniff', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO Nelspruit.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Andani','Libago', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('Funzani','Pokemon', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Mukhethwa','chuu', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('Sam','Time', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO Nelspruit.Employees (Employee_Name, Employee_Surname)
VALUES	('Bad', 'Shirt'),
		('Laugh', 'Loud'),
		('Steven', 'Smirth'),
		('Micheal', 'Ginger'),
		('okay', 'No'),
		('Horror', 'American'),
		('Walking', 'Dead'),
		('Soue', 'Soil'),
		('Bald', 'Shoes'),
		('Sarah', 'Conner'),
		('One', 'Blue'),
		('Gerald', 'Velvet'),
		('Donkey', 'Monkey'),
		('White', 'Black'),
		('Gone', 'Far'),
		('Then', 'Done')

INSERT INTO Durban.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)

INSERT INTO Durban.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO Durban.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('Jacobus', 'Bloemfontein', NULL),
	    ('Jacobus', 'Bloemfontein',  NULL),
		('Luciene', 'Polokwane',  NULL),
		('Dazzie', 'Stellenbosch',  NULL)

INSERT INTO Durban.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)

INSERT INTO Durban.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO Durban.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('Black','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Alvin','Green', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Will','Sniff', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Violet','Libago', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO Durban.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Vhusani','Libago', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('Brawl','Pokemon', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Pikapika','chuu', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL),
		('One','Time', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL)

INSERT INTO Durban.Employees (Employee_Name, Employee_Surname)
VALUES  
		('Laugh', 'Loud'),
		('Steven', 'Smirth'),
		('Micheal', 'Ginger'),
		('okay', 'No'),
		('Horror', 'American'),
		('Walking', 'Dead'),
		('Sarah', 'Conner'),
		('One', 'Blue'),
		('Gerald', 'Velvet'),
		('Donkey', 'Monkey'),
		('White', 'Black'),
		('Gone', 'Far'),
		('Bad', 'Shirt'),
		('Soue', 'Soil'),
		('Bald', 'Shoes'),
		('Then', 'Done')

INSERT INTO Polokwane.Course (Course_Name, NQF_Level, FK_Learning_Units, Fk_Student)
VALUES ('MCSE:BI', 6, NULL, NULL),
	   ('MCSD', 5,NULL, NULL),
	   ('Graphics Design I', 5,NULL, NULL),
	   ('CAD II', 6,NULL, NULL)

INSERT INTO Polokwane.Marks (Formative_Marks, Summative_Marks, Year_End_Avarage)
VALUES	(80, 80, 80),
		(80, 80, 80),
		(50, 40, 80),
		(78, 49, 65),
		(80, 80, 80),
		(85, 80, 78),
		(45, 50, 53)

INSERT INTO Polokwane.Facilitator (Facilitator_Name,Campus,FK_Course)
VALUES  ('Luciene', 'Polokwane',  NULL),
		('Dazzie', 'Stellenbosch',  NULL),
		('Jacobus', 'Bloemfontein', NULL),
	    ('Jacobus', 'Bloemfontein',  NULL)

INSERT INTO Polokwane.Internationals (International, Mark)
VALUES	(70-463, 789),
		(70-467, 890),
		(30-897, 450),
		(30-455, 777)

INSERT INTO Polokwane.Learnin_Units(Learning_Unit_Name, FK_MarksID)
VALUES  ('Programming in C#', NULL),
		('Windows Forms and WPF', NULL),
		('Photoshop', NULL),
		('Building Designs', NULL)

INSERT INTO Polokwane.Parent (Parent_Name, Parent_Surname, Identity_number,Email, Phone_Number,FK_Student)
VALUES	('Black','Coffee', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Alvin','Green', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Violet','Libago', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL),
		('Will','Sniff', 6892389423452,'Parent@ctu.co.parent', 0715160276, NULL)

INSERT INTO Polokwane.Student (Student_Name, Student_Surname,Identity_number, Gender, Email, Phone_Number, Fk_Internationals)
VALUES	('Brawl','Pokemon', 8911056257087,'F','Brawl.Pokemon@gmail.com', 0711170307,NULL),
		('Vhusani','Libago', 9611056257087,'M','Vhusani.libago@gmail.com', 0711170307,NULL),
		('One','Time', 9611056257087,'F','One.Time@gmail.com', 0711170307,NULL),
		('Pikapika','chuu', 9511076625787,'M','Pikapika.chuu@gmail.com', 0711170307,NULL)

INSERT INTO Polokwane.Employees (Employee_Name, Employee_Surname)
VALUES  ('Sarah', 'Conner'),
		('okay', 'No'),
		('Horror', 'American'),
		('Walking', 'Dead'),
		('Soue', 'Soil'),
		('Bald', 'Shoes'),
		('Then', 'Done'),
		('One', 'Blue'),
		('Gone', 'Far'),
		('Bad', 'Shirt'),
		('Gerald', 'Velvet'),
		('Donkey', 'Monkey'),
		('White', 'Black'),
		('Laugh', 'Loud'),
		('Steven', 'Smirth'),
		('Micheal', 'Ginger')
/****************************************************************************************************************/
/****************************************** UPDATE TABLES ***************************************************/
/****************************************************************************************************************/

--1 Students and internationals tables
UPDATE Auckland.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE Auckland.Student
SET 
Fk_Internationals = 2
WHERE 
StudentID  = 3;
UPDATE Auckland.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE Auckland.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE Boksburg.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE Boksburg.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE Boksburg.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE Boksburg.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE Bloemfontein.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE Bloemfontein.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE Bloemfontein.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE Bloemfontein.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE CPT.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE CPT.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE CPT.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE CPT.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE Durban.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE Durban.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE Durban.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE Durban.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE Nelspruit.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE Nelspruit.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE Nelspruit.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE Nelspruit.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE PE.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE PE.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE PE.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE PE.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE Polokwane.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE Polokwane.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE Polokwane.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE Polokwane.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE Potchefstroom.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE Potchefstroom.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE Potchefstroom.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE Potchefstroom.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE Pretoria.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE Pretoria.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE Pretoria.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE Pretoria.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE Roodepoort.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE Roodepoort.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE Roodepoort.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE Roodepoort.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE Sandton.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE Sandton.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE Sandton.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE Sandton.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE Stellenbosch.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE Stellenbosch.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE Stellenbosch.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE Stellenbosch.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
UPDATE Vereeniging.Student
SET 
Fk_Internationals = 1
WHERE 
StudentID  = 1;
UPDATE Vereeniging.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 2;
UPDATE Vereeniging.Student
SET 
Fk_Internationals = 3
WHERE 
StudentID  = 3;
UPDATE Vereeniging.Student
SET 
Fk_Internationals = 4
WHERE 
StudentID  = 4;
--2		Parents and students tables---------
UPDATE Auckland.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE Auckland.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE Auckland.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE Auckland.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE Bloemfontein.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE Bloemfontein.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE Bloemfontein.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE Bloemfontein.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE Boksburg.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE Boksburg.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE Boksburg.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE Boksburg.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE CPT.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE CPT.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE CPT.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE CPT.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE Durban.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE Durban.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE Durban.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE Durban.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE Nelspruit.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE Nelspruit.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE Nelspruit.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE Nelspruit.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE PE.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE PE.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE PE.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE PE.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE Polokwane.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE Polokwane.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE Polokwane.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE Polokwane.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE Potchefstroom.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE Potchefstroom.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE Potchefstroom.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE Potchefstroom.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE Pretoria.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE Pretoria.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE Pretoria.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE Pretoria.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE Roodepoort.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE Roodepoort.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE Roodepoort.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE Roodepoort.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE Sandton.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE Sandton.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE Sandton.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE Sandton.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE Stellenbosch.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE Stellenbosch.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE Stellenbosch.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE Stellenbosch.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
UPDATE Vereeniging.Parent
SET 
FK_Student = 1
WHERE 
ParentID  = 1;
UPDATE Vereeniging.Parent
SET 
FK_Student = 2
WHERE 
ParentID  = 2;
UPDATE Vereeniging.Parent
SET 
FK_Student = 3
WHERE 
ParentID  = 3;
UPDATE Vereeniging.Parent
SET 
FK_Student = 4
WHERE 
ParentID  = 4;
--3		Learning Units---------
UPDATE Auckland.Learnin_Units
SET
FK_MarksID = 7
WHERE 
LUID = 1;
UPDATE Auckland.Learnin_Units
SET
FK_MarksID = 4
WHERE 
LUID = 2;
UPDATE Auckland.Learnin_Units
SET
FK_MarksID = 1
WHERE 
LUID = 3;
UPDATE Auckland.Learnin_Units
SET
FK_MarksID = 3
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Auckland.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Auckland.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Auckland.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Auckland.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Auckland.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Auckland.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Auckland.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Auckland.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE Auckland.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Auckland.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Auckland.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Auckland.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Auckland.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Auckland.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Auckland.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Auckland.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE Bloemfontein.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Bloemfontein.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Bloemfontein.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Bloemfontein.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Bloemfontein.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Bloemfontein.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Bloemfontein.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Bloemfontein.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE Boksburg.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Boksburg.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Boksburg.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Boksburg.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Boksburg.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Boksburg.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Boksburg.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Boksburg.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE CPT.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE CPT.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE CPT.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE CPT.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE CPT.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE CPT.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE CPT.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE CPT.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE Durban.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Durban.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Durban.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Durban.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Durban.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Durban.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Durban.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Durban.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE Nelspruit.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Nelspruit.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Nelspruit.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Nelspruit.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Nelspruit.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Nelspruit.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Nelspruit.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Nelspruit.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE PE.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE PE.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE PE.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE PE.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE PE.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE PE.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE PE.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE PE.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE Polokwane.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Polokwane.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Polokwane.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Polokwane.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Polokwane.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Polokwane.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Polokwane.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Polokwane.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE Potchefstroom.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Potchefstroom.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Potchefstroom.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Potchefstroom.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Potchefstroom.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Potchefstroom.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Potchefstroom.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Potchefstroom.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE Pretoria.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Pretoria.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Pretoria.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Pretoria.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Pretoria.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Pretoria.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Pretoria.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Pretoria.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE Roodepoort.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Roodepoort.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Roodepoort.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Roodepoort.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Roodepoort.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Roodepoort.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Roodepoort.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Roodepoort.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE Sandton.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Sandton.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Sandton.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Sandton.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Sandton.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Sandton.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Sandton.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Sandton.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE Stellenbosch.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Stellenbosch.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Stellenbosch.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Stellenbosch.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Stellenbosch.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Stellenbosch.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Stellenbosch.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Sandton.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
UPDATE Vereeniging.Learnin_Units
SET
Formative_Description = 'Coding web applications in C#'
WHERE 
LUID = 1;
UPDATE Vereeniging.Learnin_Units
SET
Formative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Vereeniging.Learnin_Units
SET
Formative_Description = 'Image editing'
WHERE 
LUID = 3;
UPDATE Vereeniging.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Learning units formatives col update
UPDATE Vereeniging.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 1;
UPDATE Vereeniging.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 2;
UPDATE Vereeniging.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 3;
UPDATE Vereeniging.Learnin_Units
SET
Summative_Description = 'Basics'
WHERE 
LUID = 4;
--3 Course tables update
UPDATE Auckland.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE Auckland.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE Auckland.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;

UPDATE Auckland.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE Bloemfontein.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE Bloemfontein.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE Bloemfontein.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;

UPDATE Bloemfontein.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE Boksburg.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE Boksburg.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE Boksburg.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;

UPDATE Boksburg.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE CPT.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE CPT.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE CPT.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;
UPDATE CPT.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE Durban.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE Durban.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE Durban.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;
UPDATE Durban.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE Nelspruit.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE Nelspruit.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE Nelspruit.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;
UPDATE Nelspruit.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE PE.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE PE.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE PE.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;

UPDATE PE.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE Polokwane.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE Polokwane.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE Polokwane.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;
UPDATE Polokwane.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE Potchefstroom.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE Potchefstroom.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE Potchefstroom.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;
UPDATE Potchefstroom.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE Pretoria.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE Pretoria.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE Pretoria.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;
UPDATE Pretoria.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE Roodepoort.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE Roodepoort.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE Roodepoort.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;
UPDATE Roodepoort.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE Sandton.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE Sandton.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE Sandton.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;

UPDATE Sandton.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE Stellenbosch.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE Stellenbosch.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE Stellenbosch.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;

UPDATE Stellenbosch.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
UPDATE Vereeniging.Course
SET
Fk_Student = 1
WHERE 
CourseID = 1;
UPDATE Vereeniging.Course
SET
Fk_Student = 2
WHERE 
CourseID = 1;
UPDATE Vereeniging.Course
SET
Fk_Student = 3
WHERE 
CourseID = 3;

UPDATE Vereeniging.Course
SET
Fk_Student = 4
WHERE 
CourseID = 4;
--4 Facilitator tables update
UPDATE Auckland.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE Auckland.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE Auckland.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Auckland.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Auckland.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE Bloemfontein.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE Bloemfontein.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE Bloemfontein.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Bloemfontein.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Bloemfontein.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE Boksburg.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE Boksburg.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE Boksburg.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Boksburg.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Boksburg.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE CPT.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE CPT.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE CPT.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE CPT.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE CPT.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE Durban.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE Durban.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE Durban.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Durban.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Durban.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE Nelspruit.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE Nelspruit.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE Nelspruit.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Nelspruit.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Nelspruit.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE PE.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE PE.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE PE.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE PE.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE PE.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE Polokwane.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE Polokwane.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE Polokwane.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Polokwane.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Polokwane.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE Potchefstroom.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE Potchefstroom.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE Potchefstroom.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Potchefstroom.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Potchefstroom.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE Pretoria.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE Pretoria.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE Pretoria.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Pretoria.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Pretoria.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE Roodepoort.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE Roodepoort.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE Roodepoort.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Roodepoort.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Roodepoort.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE Sandton.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE Sandton.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE Sandton.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Sandton.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Sandton.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE Stellenbosch.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE Stellenbosch.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE Stellenbosch.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Stellenbosch.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Stellenbosch.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
UPDATE Vereeniging.Facilitator
SET
FK_Course = 1
WHERE 
FacilitatorID = 1;

UPDATE Vereeniging.Facilitator
SET
FK_Course = 2
WHERE 
FacilitatorID = 2;
UPDATE Vereeniging.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Vereeniging.Facilitator
SET
FK_Course = 3
WHERE 
FacilitatorID = 3;
UPDATE Vereeniging.Facilitator
SET
FK_Course = 4
WHERE 
FacilitatorID = 4;
/****************************************************************************************************************/
/****************************************** REPORTS(AUCKLAND PARK ONLY)***************************************************/
/****************************************************************************************************************/
SELECT StudentID, Student_Name, Student_Surname, Gender, Identity_number,Email, Phone_Number FROM Auckland.Student
GO
SELECT * FROM Auckland.employees
GO
CREATE PROC Auckland.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM Auckland.Student AS s
inner join Auckland.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC Auckland.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM Auckland.Student AS s
inner join Auckland.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC Auckland.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM Auckland.Learnin_Units AS l
inner join Auckland.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC Auckland.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM Auckland.Course AS c inner join Auckland.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC Auckland.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM Auckland.Course AS c inner join Auckland.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO
CREATE PROC Bloemfontein.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM Bloemfontein.Student AS s
inner join Bloemfontein.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC Bloemfontein.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM Bloemfontein.Student AS s
inner join Bloemfontein.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC Bloemfontein.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM Bloemfontein.Learnin_Units AS l
inner join Bloemfontein.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC Bloemfontein.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM Bloemfontein.Course AS c inner join Bloemfontein.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC Bloemfontein.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM Bloemfontein.Course AS c inner join Bloemfontein.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO
CREATE PROC Potchefstroom.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM Potchefstroom.Student AS s
inner join Potchefstroom.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC Potchefstroom.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM Potchefstroom.Student AS s
inner join Potchefstroom.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC Potchefstroom.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM Potchefstroom.Learnin_Units AS l
inner join Potchefstroom.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC Potchefstroom.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM Potchefstroom.Course AS c inner join Potchefstroom.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC Potchefstroom.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM Potchefstroom.Course AS c inner join Potchefstroom.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO
CREATE PROC Boksburg.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM Boksburg.Student AS s
inner join Boksburg.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC Boksburg.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM Boksburg.Student AS s
inner join Boksburg.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC Boksburg.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM Boksburg.Learnin_Units AS l
inner join Boksburg.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC Boksburg.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM Boksburg.Course AS c inner join Boksburg.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC Boksburg.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM Boksburg.Course AS c inner join Boksburg.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO
CREATE PROC CPT.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM CPT.Student AS s
inner join CPT.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC CPT.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM CPT.Student AS s
inner join CPT.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC CPT.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM CPT.Learnin_Units AS l
inner join CPT.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC CPT.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM CPT.Course AS c inner join CPT.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC CPT.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM CPT.Course AS c inner join CPT.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO
CREATE PROC Durban.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM Durban.Student AS s
inner join Durban.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC Durban.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM Durban.Student AS s
inner join Durban.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC Durban.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM Durban.Learnin_Units AS l
inner join Durban.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC Durban.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM Durban.Course AS c inner join Durban.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC Durban.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM Durban.Course AS c inner join Durban.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO
CREATE PROC Nelspruit.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM Nelspruit.Student AS s
inner join Nelspruit.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC Nelspruit.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM Nelspruit.Student AS s
inner join Nelspruit.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC Nelspruit.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM Nelspruit.Learnin_Units AS l
inner join Nelspruit.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC Nelspruit.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM Nelspruit.Course AS c inner join Nelspruit.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC Nelspruit.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM Nelspruit.Course AS c inner join Nelspruit.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO
CREATE PROC PE.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM PE.Student AS s
inner join PE.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC PE.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM PE.Student AS s
inner join PE.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC PE.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM PE.Learnin_Units AS l
inner join PE.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC PE.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM PE.Course AS c inner join PE.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC PE.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM PE.Course AS c inner join PE.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO

CREATE PROC Polokwane.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM Polokwane.Student AS s
inner join Polokwane.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC Polokwane.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM Polokwane.Student AS s
inner join Polokwane.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC Polokwane.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM Polokwane.Learnin_Units AS l
inner join Polokwane.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC Polokwane.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM Polokwane.Course AS c inner join Polokwane.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC Polokwane.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM Polokwane.Course AS c inner join Polokwane.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO
CREATE PROC Pretoria.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM Pretoria.Student AS s
inner join Pretoria.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC Pretoria.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM Pretoria.Student AS s
inner join Pretoria.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC Pretoria.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM Pretoria.Learnin_Units AS l
inner join Pretoria.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC Pretoria.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM Pretoria.Course AS c inner join Pretoria.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC Pretoria.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM Pretoria.Course AS c inner join Pretoria.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO
CREATE PROC Roodepoort.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM Roodepoort.Student AS s
inner join Roodepoort.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC Roodepoort.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM Roodepoort.Student AS s
inner join Roodepoort.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC Roodepoort.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM Roodepoort.Learnin_Units AS l
inner join Roodepoort.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC Roodepoort.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM Roodepoort.Course AS c inner join Roodepoort.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC Roodepoort.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM Roodepoort.Course AS c inner join Roodepoort.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO
CREATE PROC Sandton.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM Sandton.Student AS s
inner join Sandton.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC Sandton.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM Sandton.Student AS s
inner join Sandton.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC Sandton.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM Sandton.Learnin_Units AS l
inner join Sandton.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC Sandton.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM Sandton.Course AS c inner join Sandton.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC Sandton.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM Sandton.Course AS c inner join Sandton.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO
CREATE PROC Stellenbosch.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM Stellenbosch.Student AS s
inner join Stellenbosch.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC Stellenbosch.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM Stellenbosch.Student AS s
inner join Stellenbosch.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC Stellenbosch.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM Stellenbosch.Learnin_Units AS l
inner join Stellenbosch.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC Stellenbosch.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM Stellenbosch.Course AS c inner join Stellenbosch.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC Stellenbosch.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM Stellenbosch.Course AS c inner join Stellenbosch.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO
CREATE PROC Vereeniging.StudentParent
AS
BEGIN
SELECT s.StudentID, s.Student_Name, s.Student_Surname, s.Gender, p.Parent_Name, p.Parent_Surname, p.Email,
p.Phone_Number  FROM Vereeniging.Student AS s
inner join Vereeniging.Parent AS  p
ON s.StudentID  = P.ParentID
END
GO
CREATE PROC Vereeniging.StudentInternationals
AS
BEGIN
SELECT s.StudentID , s.Student_Name, s.Student_Surname, s.Identity_number, 
i.International AS [Exam Number], i.Mark as[Marks Obtained] FROM Vereeniging.Student AS s
inner join Vereeniging.Internationals AS i
ON s.StudentID = i.IntID
END
GO
CREATE PROC Vereeniging.LearningUnitMarks
AS
BEGIN
SELECT l.Learning_Unit_Name ,m.Year_End_Avarage FROM Vereeniging.Learnin_Units AS l
inner join Vereeniging.Marks AS m
ON l.LUID = m.MarksID
END
GO
CREATE PROC Vereeniging.CourseStudent
AS
BEGIN
SELECT c.Course_Name, c.NQF_Level, s.Student_Name,s.Student_Surname,s.Gender 
FROM Vereeniging.Course AS c inner join Vereeniging.Student AS s
ON  c.CourseID = s.StudentID
END
GO
CREATE PROC Vereeniging.FacilitatorCourse
AS
BEGIN
SELECT f.Facilitator_Name, c.Course_Name
FROM Vereeniging.Course AS c inner join Vereeniging.Facilitator AS f
ON  c.CourseID = f.FacilitatorID
END
GO