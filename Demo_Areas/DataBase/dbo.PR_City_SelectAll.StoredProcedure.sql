USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_City_SelectAll]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC	[dbo].[PR_City_SelectAll]
AS
BEGIN
	SELECT  [dbo].[LOC_City].[CityID],
			[dbo].[LOC_City].[CityName],
			[dbo].[LOC_City].[CityCode],
			[dbo].[LOC_City].[StateID],
			[dbo].[LOC_State].[StateName],
			[dbo].[LOC_City].[CountryID],
			[dbo].[LOC_Country].[CountryName],
			[dbo].[LOC_City].[CreationDate],
		    [dbo].[LOC_City].[Modified]

	FROM [dbo].[LOC_City]

	INNER JOIN [dbo].[LOC_State]
	ON [dbo].[LOC_State].[StateID] = [dbo].[LOC_City].[StateID]

	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_Country].[CountryID] = [dbo].[LOC_State].[CountryID]

	ORDER BY [dbo].[LOC_City].[CityName],
			 [dbo].[LOC_State].[StateName],
			 [dbo].[LOC_Country].[CountryName]
			 
			 
END
GO
