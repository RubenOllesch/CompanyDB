CREATE PROCEDURE [dbo].[spNewEmployee]
	@firstName VARCHAR(256),
	@lastName VARCHAR(256),
	@departmentId INT
AS
	INSERT INTO Employee (FirstName, LastName, DepartmentId)
	VALUES (@firstName, @lastName, @departmentId)
RETURN 0
