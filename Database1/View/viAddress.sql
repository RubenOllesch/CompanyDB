CREATE VIEW [dbo].[viAddress]
	AS SELECT Id, Country, City, ZIP, Street, CompanyId, CreationTime FROM Address WHERE DeletionTime IS NULL
