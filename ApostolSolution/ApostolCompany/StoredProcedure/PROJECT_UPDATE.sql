CREATE PROCEDURE [dbo].[PROJECT_UPDATE]
	@Pname  VARCHAR(15),
	@Pnumber INT,
	@Plocation  VARCHAR(15),
	@Dnum INT
AS
BEGIN
Update PROJECT 
Set Pname = @Pname,
	Pnumber = @Pnumber,
	Dnum = @Dnum
Where Plocation = @Plocation
END