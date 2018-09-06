CREATE VIEW [dbo].[viEmployee]
	AS SELECT Id, FirstName, LastName, fnGetGender(Gender) AS Gender, BirthDate, DepartmentId, CreationTime FROM Employee WHERE DeletionTime IS NULL
