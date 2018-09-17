CREATE PROCEDURE spCrReEmployee
   @FirstName NVARCHAR(256) = NULL,
   @LastName NVARCHAR(256) = NULL,
   @Gender INT = NULL,
   @BirthDate DATE = NULL,
   @DepartmentId INT = NULL,
   @Id INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	IF NOT EXISTS (SELECT Id FROM Employee WHERE Id = @Id AND DeletionTime IS NULL)
		BEGIN
			INSERT INTO [dbo].[Employee]
				(
				[FirstName],
				[LastName],
				[Gender],
				[BirthDate],
				[DepartmentId]
				)
			VALUES
				(
				@FirstName,
				@LastName,
				@Gender,
				@Birthdate,
				@DepartmentId
				)
			RETURN (SELECT SCOPE_IDENTITY());
		END
	ELSE
		BEGIN
			UPDATE [dbo].[Employee]
			SET 
				[FirstName] = ISNULL(@FirstName, [FirstName]),
				[LastName] = ISNULL(@LastName, [LastName]),
				[Gender] = ISNULL(@Gender, [Gender]),
				[BirthDate] = ISNULL(@BirthDate, [BirthDate]),
				[DepartmentId] = ISNULL(@DepartmentId, [DepartmentId])
			WHERE Id = @Id;
			RETURN @Id;
		END
END
GO