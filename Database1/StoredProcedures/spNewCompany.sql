CREATE PROCEDURE [dbo].[spNewCompany]
	@companyName VARCHAR(256)
AS
	INSERT INTO Company (CompanyName)
	VALUES (@companyName)
RETURN 0
