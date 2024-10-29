CREATE PROCEDURE [dbo].[PROJECT_DELETE]
		@Plocation  VARCHAR(15)
AS
BEGIN
Delete from PROJECT Where Plocation = @Plocation
END
