USE [StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[PR_State_ComboBoxbyCountryId]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_State_ComboBoxbyCountryId]
@COUNTRYID INT
AS
SELECT StateID, StateName FROM LOC_State
WHERE LOC_State. COUNTRYID = @COUNTRYID
GO
