USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_State_Insert]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_State_Insert]
	@StateName		varchar(100),
	@CountryId		int,
	@StateCode		varchar(5)

AS
BEGIN
	
	INSERT INTO [dbo].[LOC_State]
	(
		StateName,
		CountryId,
		StateCode
	)
	VALUES
	(
		@StateName,
		@CountryId,
		@StateCode
	)
END
GO
