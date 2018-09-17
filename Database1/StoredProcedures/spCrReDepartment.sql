CREATE PROCEDURE spCrReDepartment
   @DepartmentName NVARCHAR(256) = NULL,
   @ManagerId INT = NULL,
   @CompanyId INT = NULL,
   @Id INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	IF NOT EXISTS (SELECT Id FROM Department WHERE Id = @Id AND DeletionTime IS NULL)
		BEGIN
			INSERT INTO [dbo].[Department]
				(
				[DepartmentName],
				[ManagerId],
				[CompanyId]
				)
			VALUES
				(
				@DepartmentName,
				@ManagerId,
				@CompanyId
				);
			RETURN (SELECT SCOPE_IDENTITY());
		END
	ELSE
		BEGIN
			UPDATE [dbo].[Department]
			SET 
				[DepartmentName] = ISNULL(@DepartmentName, [DepartmentName]),
				[ManagerId] = ISNULL(@ManagerId, [ManagerId]),
				[CompanyId] = ISNULL(@CompanyId, [CompanyId])
			WHERE Id = @Id;
			RETURN @Id;
		END
END
GO