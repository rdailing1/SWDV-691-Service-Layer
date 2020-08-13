USE [GiftExchange]
GO

/****** Object:  StoredProcedure [dbo].[UserLogin]    Script Date: 8/3/2020 4:43:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UserLogin]
	   @email	VARCHAR(50),
	   @pwd		VARCHAR(50),
	   @RetVal	VARCHAR(5) OUTPUT
AS
BEGIN

	SET @RetVal = 'False'

	IF EXISTS(SELECT 1
				FROM dbo.UserProfile
			   WHERE Email = @email)
	 BEGIN
		IF @pwd = (SELECT Password FROM dbo.UserProfile WHERE Email = @email)
		BEGIN
			SET @RetVal = 'True'
		END
	 END

	SELECT @RetVal

END

GO


