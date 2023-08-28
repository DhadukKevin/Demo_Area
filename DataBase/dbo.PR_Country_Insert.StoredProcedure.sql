USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_Insert]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Country_Insert]
@CountryName varchar(100),
@CountryCode varchar(5)
AS
BEGIN

	INSERT INTO [dbo].[LOC_Country]
	(
		CountryName,
		CountryCode
	)
	VALUES
	(
		@CountryName,
		@CountryCode
	)
END
GO
