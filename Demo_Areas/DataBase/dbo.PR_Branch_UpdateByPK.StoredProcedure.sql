USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_UpdateByPK]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PR_Branch_UpdateByPK
CREATE PROCEDURE [dbo].[PR_Branch_UpdateByPK]
	@BranchID		int,
	@BranchName		varchar(50),
	@BranchCode		varchar(50)
AS
BEGIN
	UPDATE [dbo].[MST_Branch]
	SET [BranchName] = @BranchName,
		[BranchCode] = @BranchCode,
		[Modified] = GETDATE()

	WHERE [dbo].[MST_Branch].[BranchID] = @BranchID
END
GO
