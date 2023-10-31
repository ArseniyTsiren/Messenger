create database Messanger;

USE Messanger;
go
 
create table [Name]
(
Id int identity not null primary key,
[Name] nvarchar (100) not null,
Surname nvarchar (100) not null,
Phone nvarchar (20) not null unique,
Email nvarchar (100) not null unique,

constraint Check_MessangerName 
	check ([Name] != ''),
constraint Check_MessangerSurnmae
	check (Surname != ''),
constraint Check_MessangerEmail
	check (Email <> '')
);  

create table [Login] 
(
Id int identity not null primary key,
UserName nvarchar (100) not null unique,
[Password] nvarchar (100) not null,
Email_Name nvarchar (100) not null,

constraint Check_LoginUserName
	check (UserName <> ''),
constraint Check_LoginPassword
	check ([Password] <> ''),
constraint Check_LoginEmail_Name
	check (Email_Name <> ''),

constraint FK_NameLogin
	foreign key (Email_Name)
	references [Name](Email)
		on delete cascade
		on update cascade 
);


