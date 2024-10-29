CREATE PROCEDURE [dbo].[PROJECT_CREATE]
	@Pname  VARCHAR(15),
	@Pnumber INT,
	@Plocation  VARCHAR(15),
	@Dnum INT
AS
BEGIN
Insert PROJECT (Pname,Pnumber,Plocation,Dnum)
Values
(@Pname,@Pnumber,@Plocation,@Dnum)
END