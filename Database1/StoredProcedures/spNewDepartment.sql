CREATE PROCEDURE [dbo].[spNewDepartment]
	@departmentName VARCHAR(256),
	@managerId INT,
	@companyId INT
AS
	INSERT INTO Department(DepartmentName, ManagerId, CompanyId)
	VALUES (@departmentName, @managerId, @companyId)
RETURN 0
