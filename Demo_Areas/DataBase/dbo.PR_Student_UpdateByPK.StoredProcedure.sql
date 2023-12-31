USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_UpdateByPK]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PR_Student_UpdateByPK
CREATE PROCEDURE [dbo].[PR_Student_UpdateByPK]
	@StudentID			int,
	@BranchID			int,
	@CityID				int,
	@StudentName		varchar(100),
	@MobileNoStudent	varchar(100),
	@Email				varchar(100),
	@MobileNoFather		varchar(100),
	@Address			varchar(500),
	@BirthDate			datetime,
	@Age				int,
	@IsActive			bit,
	@Gender				varchar(50),
	@Password			varchar(100)
AS
BEGIN
	UPDATE [dbo].[MST_Student]
	SET [BranchID] = @BranchID,
		[CityID] = @CityID,
		[StudentName] = @StudentName,
		[MobileNoStudent] = @MobileNoStudent,
		[Email] = @Email,
		[MobileNoFather] = @MobileNoFather,
		[Address] = @Address,
		[BirthDate] = @BirthDate,
		[Age] = @Age,
		[IsActive] = @IsActive,
		[Password] = @Password,
		[Modified] = GETDATE()

	WHERE [dbo].[MST_Student].[StudentID] = @StudentID
END
GO
