drop table dbo.DEPARTMENT
go

create table dbo.DEPARTMENT
(
[Dname] varchar(15),
[Dnumber] int,
[Mgr_ssn] char(9),
[Mgr_start_date] date
constraint [PK_DEPARTMENT_Dnumber] primary key clustered ([Dnumber] asc),
constraint [UK_DEPARTMENT_Dname] unique nonclustered (Dname)
)
go

create nonclustered index [ix_DEPARTMENT_Dname] on dbo.DEPARTMENT([Dname] asc);
go

insert into dbo.DEPARTMENT
values
(N'HDY', N'1', N'864', N'1695-03-04' ),
(N'FGU', N'2', N'244', N'1978-11-23' ),
(N'TDG', N'3', N'199', N'1997-12-30' ),
(N'APH', N'4', N'821', N'1999-03-13' ),
(N'DTY', N'5', N'213', N'2007-10-19' )
go

select * from dbo.DEPARTMENT;
go

delete from dbo.DEPARTMENT
where [Dname] = 'APH';
select * from dbo.DEPARTMENT;
go

update dbo.DEPARTMENT
set [Dname] = 'ABC'
where [Dnumber] = 1;
select * from dbo.DEPARTMENT;
go
