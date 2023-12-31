USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_SelectAll]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PR_Student_SelectAll
CREATE PROCEDURE [dbo].[PR_Student_SelectAll]
AS
BEGIN
	SELECT	[dbo].[MST_Student].[StudentID],
			[dbo].[MST_Student].[StudentName],
			[dbo].[MST_Student].[BirthDate],
			[dbo].[MST_Student].[Age],
			[dbo].[MST_Student].[MobileNoStudent],
			[dbo].[MST_Student].[MobileNoFather],
			[dbo].[MST_Student].[Email],
			[dbo].[MST_Student].[Address],
			[dbo].[MST_Student].[CityID],
			[dbo].[LOC_City].[CityName],
			[dbo].[MST_Student].[Gender],
			[dbo].[MST_Student].[Password],
			[dbo].[MST_Branch].[BranchID],
			[dbo].[MST_Branch].[BranchName],
			[dbo].[MST_Student].[IsActive],
			[dbo].[MST_Student].[Created],
			[dbo].[MST_Student].[Modified]

	FROM	[dbo].[MST_Student]

	INNER JOIN	[dbo].[MST_Branch]
	ON	[dbo].[MST_Student].[BranchID]=[dbo].[MST_Branch].[BranchID]

	INNER JOIN	[dbo].[LOC_City]
	ON	[dbo].[MST_Student].[CityID]=[dbo].[LOC_City].[CityID]

	Order By  [dbo].[MST_Student].[StudentName]
END
GO
