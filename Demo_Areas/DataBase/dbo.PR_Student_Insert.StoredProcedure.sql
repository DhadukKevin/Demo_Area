USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_Insert]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PR_Student_Insert
CREATE PROCEDURE [dbo].[PR_Student_Insert]
	@BranchID			int,
	@CityID				int,
	@StudentName		varchar(100),
	@MobileNoStudent	varchar(100),
	@Email				varchar(100),
	@MobileNofather		varchar(100),
	@Address			varchar(500),
	@BirthDate			datetime,
	@Age				int,
	@IsActive			bit,
	@Gender				varchar(50),
	@Password			varchar(100)

AS
BEGIN
	INSERT INTO [dbo].[MST_Student]
	(
		BranchID,	
		CityID,		
		StudentName,	
		MobileNoStudent,
		Email,			
		MobileNoFather,	
		Address,		
		BirthDate,		
		Age,			
		IsActive,		
		Gender,			
		Password,
		Created,
		Modified
	)	
	VALUES
	(
		@BranchID,	
		@CityID,			
		@StudentName,	
		@MobileNoStudent,
		@Email,
		@MobileNofather,	
		@Address,
		@BirthDate,		
		@Age,	
		@IsActive,		
		@Gender,	
		@Password,
		GETDATE(),
		GETDATE()
	)	
END
GO
