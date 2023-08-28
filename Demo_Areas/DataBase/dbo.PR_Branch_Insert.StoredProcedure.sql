USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_Insert]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Branch_Insert]
	@BranchName		varchar(50),
	@BranchCode		varchar(50)

AS
BEGIN
	INSERT INTO [dbo].[MST_Branch]
	(
		BranchName,
		BranchCode
	)	
	VALUES
	(
		@BranchName,
		@BranchCode
	)	
END
GO
