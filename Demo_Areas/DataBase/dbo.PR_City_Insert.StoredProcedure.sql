USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_City_Insert]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_City_Insert]
	@CityName		varchar(100),
	@StateId		int,
	@CountryId		int,
	@CityCode		varchar(5)

AS
BEGIN
	INSERT INTO [dbo].[LOC_City]
	(
		CityName,	
		StateId,
		CountryID,	
		CityCode
	)
	VALUES
	(
		@CityName,	
		@StateId,
		@CountryId,	
		@CityCode
	)
END
GO
