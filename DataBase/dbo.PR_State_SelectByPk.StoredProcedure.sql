USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_State_SelectByPk]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_State_SelectByPk]
@StateId int
As
Begin
	SELECT [dbo].[LOC_State].[StateID],
		   [dbo].[LOC_State].[StateName],
		   [dbo].[LOC_State].[StateCode],
		   [dbo].[LOC_State].[CountryID],
		   [dbo].[LOC_Country].[CountryName],
		   [dbo].[LOC_State].[Created],
		   [dbo].[LOC_State].[Modified]
	FROM [dbo].[LOC_State]

	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_Country].[CountryID] = [dbo].[LOC_State].[CountryID]

	WHERE [dbo].[LOC_State].[StateID] = @StateId

	ORDER BY [dbo].[LOC_Country].[CountryName],
			 [dbo].[LOC_State].[StateName]
END
GO
