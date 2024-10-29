USE ApostolCompany
GO

--insert into dbo.PROJECT
--values
--(N'Comfort Room', N'12', N'Pikit', N'8321'),
--(N'House', N'13', N'Midsayap', N'6342'),
--(N'Cottage', N'14', N'Aleosan', N'9178'),
--(N'Building', N'15', N'Libungan', N'1937'),
--(N'Room', N'16', N'Pigkawayan', N'2003')
--go

SELECT * FROM dbo.PROJECT;
GO

UPDATE dbo.PROJECT
SET [Pname] = 'School'
WHERE [Pnumber] = 12;
SELECT * FROM dbo.PROJECT;
GO

DELETE FROM dbo.PROJECT
WHERE [Pnumber] = 12;

SELECT * FROM dbo.PROJECT;
GO

SELECT [Mgr_ssn]
FROM PROJECT
LEFT JOIN DEPARTMENT
ON PROJECT.[Pnumber] = DEPARTMENT.[Dnumber]





