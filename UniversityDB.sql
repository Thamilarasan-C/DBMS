create database universitydb;
use universitydb;
create table department(
departmentId int primary key,
departmentName varchar(20)
);
create table student(
StudentID int Not null auto_increment,
StudentName varchar(20),
DepartmentID int,
primary key(StudentID),
foreign key(DepartmentId) references department(departmentId)
);
create table instructor(
InstructorID int not null auto_increment,
InstructorName varchar(20),
DepartmentID int,
primary key(InstructorID)
);
create table course(
CourseNumber int primary key,
courseName varchar(20),
semester int,
YearOfStudy year,
Syllabus varchar(50),
DepartmentId int,
foreign key (DepartmentId) references  department(departmentId)
);
create table StudentsGrade(
StudentId int,
CourseNumber int,
yearOfStudy year,
Grade varchar(10),
primary key(StudentId,CourseNumber,yearOfStudy)
);
create table ClassMapping(
InstructorId int,
classroom int,
Timing time,
CourseNumber int,
primary key (InstructorId,classroom,Timing,courseNumber),
foreign key (InstructorId) references Instructor(InstructorId),
foreign key (CourseNumber) references Course(CourseNumber)
);