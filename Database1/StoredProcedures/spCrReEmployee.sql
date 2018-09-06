CREATE PROCEDURE spCrReEmployee
   @FirstName NVARCHAR(256),
   @LastName NVARCHAR(256),
   @Gender INT,
   @BirthDate DATE,
   @DepartmentId INT,
   @Id INT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @DBId INT
	SET @DBId = (SELECT Id FROM Employee WHERE Id = @Id AND DeletionTime IS NULL)
	IF(@DBId IS NULL)
		BEGIN
			INSERT INTO [dbo].[Employee]
				([FirstName], [LastName], [Gender], [BirthDate], [DepartmentId])
			VALUES
				(@FirstName, @LastName, @Gender, @Birthdate, @DepartmentId)
			SET @DBId = (SELECT SCOPE_IDENTITY())
		END
	ELSE
		BEGIN
			UPDATE [dbo].[Employee]
			SET 
				[FirstName] = @FirstName,
				[LastName] = @LastName,
				[Gender] = @Gender,
				[BirthDate] = @BirthDate,
				[DepartmentId] = @DepartmentId
			WHERE Id = @Id
		END
	RETURN @DBId
END
GO