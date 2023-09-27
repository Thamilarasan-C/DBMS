create database universitydb;
use universitydb;
create table student(
StudentID int Not null auto_increment,
StudentName varchar(20),
DepartmentID int,
primary key(StudentID)
);
create table instructor(
InstructorID int not null auto_increment,
InstructorName varchar(20),
DepartmentID int,
primary key(InstructorID)
);
create table course(