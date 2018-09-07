CREATE VIEW [dbo].[viDepartment]
	AS SELECT
		Id,
		DepartmentName,
		ManagerId,
		CreationTime
	FROM Department
	WHERE DeletionTime IS NULL
