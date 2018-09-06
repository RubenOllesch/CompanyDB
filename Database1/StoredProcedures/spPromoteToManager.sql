CREATE PROCEDURE [dbo].[spPromoteToManager]
	@employeeId INT
AS
	INSERT INTO Manager (Id)
	VALUES (@employeeId)
RETURN 0
