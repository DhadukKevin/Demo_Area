USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_City_ComboBox]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PR_City_ComboBox
CREATE PROC [dbo].[PR_City_ComboBox]
AS
SELECT [dbo].[LOC_City].[CityID],
		[dbo].[LOC_City].[CityName]
From LOC_City
GO
