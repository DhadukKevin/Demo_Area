USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_City_UpdateByPK]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_City_UpdateByPK]
	@CityID			int,
	@CityName		varchar(100),
	@StateID		int,
	@CountryID		int,
	@CityCode		varchar(5)
AS
BEGIN
	UPDATE [dbo].[LOC_City]
	SET [CityName] = @CityName,
		[StateID] = @StateID,
		[CountryID] = @CountryID,
		[Citycode] = @CityCode,
		[Modified] = GETDATE()

	WHERE [dbo].[LOC_City].[CityID] = @CityID
END
GO
