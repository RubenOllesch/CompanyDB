CREATE VIEW [dbo].[viEmployeeAddress]
	AS SELECT
		A2E.EmployeeId,
		E.FirstName,
		E.LastName,
		A2E.AddressId,
		A.Country,
		A.City,
		A.ZIP,
		A.Street
	FROM [Employee] E
	INNER JOIN [Address2Employee] A2E
		ON E.Id = A2E.EmployeeId 
	INNER JOIN [Address] A
		ON A2E.AddressId = A.Id
