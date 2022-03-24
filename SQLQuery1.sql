create database CodeAcademy
 
create table Groups(
	Id int primary key identity,
	Name nvarchar(30),
)
create table Students(
	Id int identity,
	Name nvarchar(30),
	Surname nvarchar(30),
	GroupId int references Groups(Id),
)
alter table Students
add Grade decimal

insert into Groups(Name)
values ('P224'),('P124'),('P221')

insert into Students(Name,Surname,GroupId,Grade)
values	('Amil', 'Nuriyev',3,90),
		('Saxavat', 'Aliyev',1,99),
		('Masud', 'Mirzazada',1,80),
		('David', 'Qayibov',1,75)

Select * from Students Where GroupId=1


Create View usv_studentView AS
Select Name,Surname,Grade
From Students
select * from usv_studentView

Select Count(Name) from Students Where(GroupId=1)
