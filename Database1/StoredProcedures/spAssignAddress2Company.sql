CREATE PROCEDURE [dbo].[spAssignAddress2Company]
	@AddressId INT,
	@CompanyId INT
AS
BEGIN
	IF((SELECT AddressId FROM Address2Company WHERE AddressId = @AddressId AND CompanyId = @CompanyId) IS NULL)
		INSERT INTO Address2Company
			([AddressId], [CompanyId])
		VALUES
			(@AddressId, @CompanyId)
END
RETURN 0
