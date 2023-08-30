USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_DeleteByPK]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Country_DeleteByPK]
	@CountryID int
AS
BEGIN
	DELETE
	FROM [dbo].[LOC_Country]
	WHERE [dbo].[LOC_Country].[CountryID] = @CountryID
END
GO
