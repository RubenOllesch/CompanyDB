CREATE PROCEDURE [dbo].[spNewCompany]
	@companyName varchar(256)
AS
	INSERT INTO Company (CompanyName)
	VALUES (@companyName)
RETURN 0
