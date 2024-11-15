CREATE PROCEDURE [dbo].[CreatePlayer]
	@Id NVARCHAR(8) = NULL,
	@Name NVARCHAR(32) = NULL
AS
BEGIN
	--IF LEN(LTRIM(RTRIM(COALESCE(@Id, N'')))) < 1 RETURN ;

	INSERT INTO [dbo].[Players] ([Id], [Name])
	VALUES (@Id, @Name);
END