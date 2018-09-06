CREATE VIEW [dbo].[viCompany]
	AS SELECT Id, CompanyName, CreationTime FROM Company WHERE DeletionTime IS NULL
