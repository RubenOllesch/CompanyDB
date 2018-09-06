CREATE VIEW [dbo].[viEmployee]
	AS SELECT Id, FirstName, LastName, [dbo].[fnGetGender](Gender) AS Gender, BirthDate, DepartmentId, CreationTime FROM Employee WHERE DeletionTime IS NULL
