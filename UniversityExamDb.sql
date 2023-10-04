create database UniversityExam;
use universityexam;
create table department(
departmentId int primary key,
departmentName varchar(20)
);
create table student(
StudentID int primary key,
StudentName varchar(20),
DepartmentID int,
foreign key(DepartmentId) references department(departmentId)
);
create table course(
CourseNumber int primary key,
courseName varchar(20),
DepartmentId int,
foreign key (DepartmentId) references  department(departmentId)
);
create table section(
CourseNumber int,
SectionNumber int primary key,
StudentID int,
foreign key (StudentId) references  Student(StudentId),
foreign key (CourseNumber) references  Course(CourseNumber)
);
create table room(
Building varchar(20),
Capacity int,
roomNumber int primary key
);
create table Exam(
ExamId int primary key,
CourseNumber int,
SectionNumber int,
StudentID int,
RoomNumber int,
foreign key (StudentId) references  Student(StudentId),
foreign key (SectionNumber) references  Section(SectionNumber),
foreign key (CourseNumber) references  Course(CourseNumber),
foreign key (RoomNumber) references  Room(RoomNumber)
);