CREATE PROCEDURE [dbo].[spAssignAddress2Employee]
	@AddressId INT,
	@EmployeeId INT
AS
BEGIN
	IF((SELECT AddressId FROM Address2Employee WHERE AddressId = @AddressId AND EmployeeId = @EmployeeId) IS NULL)
		INSERT INTO Address2Employee
			([AddressId], [EmployeeId])
		VALUES
			(@AddressId, @EmployeeId);
END
RETURN 0
