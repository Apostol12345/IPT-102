drop table dbo.[DEPENDENT]
go


create table dbo.[DEPENDENT]
(
[Essn] char(9) NOT NULL,
[Dname] varchar(15) NOT NULL,
[Sex] char NULL,
[Bdate] date NULL,
[Relationship] varchar(8) NULL,

constraint [pk_DEPARTMENT_Dname] primary key (Essn, Dname),
);
go

create nonclustered index [IX_DEPENDENT_Sex] on [DEPENDENT]([Sex] asc)

insert into dbo.[DEPENDENT]
values
(N'fh', N'person 1',N'M', N'1695-03-04', N'Brother' ),
(N'fg', N'person 2',N'M', N'1695-03-04', N'Sister' ),
(N'fj', N'person 3',N'M', N'1695-03-04', N'Father' ),
(N'fk', N'person 4',N'M', N'1695-03-04', N'Mother'),
(N'fl', N'person 5',N'M', N'1695-03-04', N'Brother' )
go

select * from dbo.[DEPENDENT]

