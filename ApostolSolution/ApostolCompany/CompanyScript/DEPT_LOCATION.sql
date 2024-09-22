drop table dbo.DEPT_LOCATION
go

create table dbo.DEPT_LOCATION
(
[Dnumber] int NOT NULL constraint [pk_DEPT_LOCATION_Dnumber] primary key,
[Dlocation] varchar(15) NOT NULL 
);
go

create nonclustered index[IX_DEPT_LOCATION_Dlocation] on [dbo].[DEPT_LOCATION] ([Dlocation])

insert into dbo.DEPT_LOCATION
values
(N'12', N'Pikit'),
(N'13', N'Midsayap'),
(N'14', N'Aleosan'),
(N'15', N'Libungan'),
(N'16', N'Pigkawayan')
go

select * from dbo.DEPT_LOCATION

