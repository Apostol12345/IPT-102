CREATE PROCEDURE [dbo].[PROJECT_READ]
	@Find  VARCHAR(15)

AS
BEGIN
Select * from PROJECT 
Where Pnumber Like @Find or Plocation Like @Find or Dnum Like @Find
END