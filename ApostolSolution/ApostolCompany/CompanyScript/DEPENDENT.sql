USE ApostolCompany
GO

INSERT INTO dbo.[DEPENDENT]
VALUES
(N'123', N'person 1',N'M', N'1695-03-04', N'Brother' ),
(N'234', N'person 2',N'M', N'1695-03-04', N'Sister' ),
(N'345', N'person 3',N'M', N'1695-03-04', N'Father' ),
(N'456', N'person 4',N'M', N'1695-03-04', N'Mother'),
(N'567', N'person 5',N'M', N'1695-03-04', N'Brother' )
GO

select * from dbo.[DEPENDENT]
GO

DELETE FROM dbo.DEPENDENT
WHERE [Dname] = 'person 1';
SELECT * FROM dbo.DEPARTMENT;
GO

update dbo.dependent
set [dname] = 'person 6'
where [essn] = 'fh';
select * from dbo.dependent;
go

select [mgr_ssn]
from department
left join employee
on department.[mgr_ssn] = employee.[ssn]
