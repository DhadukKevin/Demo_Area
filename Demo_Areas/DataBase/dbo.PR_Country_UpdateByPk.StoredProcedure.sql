USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_UpdateByPk]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Country_UpdateByPk]
	@CountryId		int,
	@CountryName	varchar(100),
	@CountryCode	varchar(5)
AS
BEGIN

	UPDATE [dbo].[LOC_Country]

	SET [CountryName] = @CountryName,
		[CountryCode] = @CountryCode,
		[Modified] = GETDATE()

	WHERE [dbo].[LOC_Country].[CountryID] = @CountryId
END
GO
