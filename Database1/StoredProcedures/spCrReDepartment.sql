CREATE PROCEDURE spCrReDepartment
   @DepartmentName NVARCHAR(256),
   @ManagerId INT,
   @CompanyId INT,
   @Id INT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @DBId INT;
	SET @DBId = (SELECT Id FROM Department WHERE Id = @Id);
	IF(@DBId IS NULL)
		BEGIN
			INSERT INTO [dbo].[Department]
				([DepartmentName], [ManagerId], [CompanyId])
			VALUES
				(@DepartmentName, @ManagerId, @CompanyId);
			SET @DBId = (SELECT SCOPE_IDENTITY());
		END
	ELSE
		BEGIN
			UPDATE [dbo].[Department]
			SET 
				[DepartmentName] = @DepartmentName,
				[ManagerId] = @ManagerId,
				[CompanyId] = @CompanyId
			WHERE Id = @Id;
		END
	RETURN @DBId;
END
GO