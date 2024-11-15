USE [master]
GO

IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'IM102')
BEGIN 
CREATE DATABASE [IM102]
END
GO
 
USE [IM102];
GO

IF OBJECT_ID([DBO].[Students]) IS NULL
BEGIN
CREATE TABLE [DBO].[Students]
(
[Id] NVARCHAR (8),
[Name] NVARCHAR(32),

CONSTRAINT [PK_Students_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
)
CREATE UNIQUE NONCLUSTERED INDEX [UX_Students_Name] ON [DBO].[Students]([Name] ASC)
WHERE [Name] IS NOT NULL;
END
GO

INSERT INTO [DBO].[Students] ([Id],[Name])
VALUES 
(N'2',N'Teddy')
SELECT * FROM [Students]

IF NOT EXISTS (SELECT TOP(1) 1 FROM [DBO].[Students] WHERE [Id] = N'1')
BEGIN 
INSERT INTO [DBO].[Students] ([Id],[Name])
VALUES 
(N'1',N'Jeff')
END

IF NOT EXISTS (SELECT TOP(3) 1 FROM [DBO].[Students] WHERE [Id] = N'2')
BEGIN 
INSERT INTO [DBO].[Students] ([Id],[Name])
VALUES 
(N'2',N'Teddy')
END
ELSE
BEGIN
UPDATE [DBO].[Students]
SET [Name] = N'Charles'
WHERE [Id] = 2;
END
SELECT * FROM [Students]

UPDATE [DBO].[Students]
SET [Name] = N'Charles'
WHERE [Id] = 1;
SELECT * FROM [Students]

SELECT * FROM [Students]
WHERE [Id] = 1;

DELETE FROM [Students]
WHERE [Id] = 1;