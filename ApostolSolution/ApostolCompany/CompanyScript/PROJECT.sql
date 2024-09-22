drop table dbo.PROJECT
go

create table dbo.PROJECT
(
[Pname] varchar(15) NOT NULL constraint [ux_PROJECT_Pname] unique nonclustered,
[Pnumber] int NOT NULL,
[Plocation] varchar(15) constraint [pk_PROJECT_Pnumber] primary key,
[Dnum] int NOT NULL,
);
go 
create nonclustered index [ix_PROJECT_Plocation] on PROJECT ([Plocation])

insert into dbo.PROJECT
values
(N'Comfort Room', N'12', N'Pikit', N'8321'),
(N'House', N'13', N'Midsayap', N'6342'),
(N'Cottage', N'14', N'Aleosan', N'9178'),
(N'Building', N'15', N'Libungan', N'1937'),
(N'Room', N'16', N'Pigkawayan', N'2003')
go

select * from dbo.PROJECT




