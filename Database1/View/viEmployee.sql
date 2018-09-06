CREATE VIEW [dbo].[viEmployee]
	AS SELECT Id, FirstName, LastName, DepartmentId, CreationTime FROM Employee WHERE DeletionTime IS NULL
