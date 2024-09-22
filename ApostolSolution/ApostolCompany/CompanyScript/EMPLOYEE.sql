drop table dbo.EMPLOYEE
go

create table dbo.EMPLOYEE
(
	[Fname] VARCHAR(50) NOT NULL , 
    [Minit] CHAR NULL,
	[Lname] VARCHAR(15) NOT NULL,
	[Ssn] CHAR(9) NOT NULL,
	[Bdate] DATE,
	[Address] VARCHAR(30),
	[Sex] CHAR,
	[Salary] decimal(10,2),
	[Super_ssn] char(9),
	[Dno] int NOT NULL, 
    constraint [pk_EMPLOYEE] primary key ([Ssn])
);
go 

create nonclustered index [IX_EMPLOYEE_Name] ON dbo.EMPLOYEE([Fname] ASC, [Lname] ASC, [Minit] ASC);

insert into dbo.EMPLOYEE
values
(N'Jefferd', N'S', N'Apostol', N'12345', N'2003-06-19', N'Pikit', N'M', N'1000', N'123', N'1'),
(N'Paolo', N'T', N'Espaldon', N'96149', N'2004-12-09', N'Midsayap', N'M', N'5700', N'321', N'2'),
(N'Daryll', N'B', N'Urmeneta', N'89414', N'2004-01-13', N'Pigkawayan', N'M', N'3400', N'821', N'3'),
(N'Bea Andre', N'A', N'Montes', N'89174', N'2003-06-19', N'Libungan', N'F', N'2300', N'653', N'4'),
(N'Clyde', N'R', N'Tulbanos', N'24817', N'2005-05-06', N'Aleosan', N'M', N'2700', N'546', N'5')
go

select * from dbo.EMPLOYEE



