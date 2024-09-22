drop table dbo.WORKS_ON
go

create table dbo.WORKS_ON
(
[Essn] char(9) NOT NULL,
[Pno] int NOT NULL,
[Hours] decimal(3,1) NOT NULL,

);
 
go
create nonclustered index [ix_WORKS_ON_Number] on WORKS_ON ([Pno] asc)

insert into dbo.WORKS_ON
values
(N'rt', N'12', N'83'),
(N'rt', N'13', N'63'),
(N'rt', N'14', N'91'),
(N'ty', N'15', N'19'),
(N'ui', N'16', N'20')
go

select * from dbo.WORKS_ON




