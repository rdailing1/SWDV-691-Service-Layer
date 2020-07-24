USE [GiftExchange]
GO

/****** Object:  Table [dbo].[Matches]    Script Date: 7/20/2020 11:04:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Matches](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[MatchName] [varchar](100) NULL,
	[GroupName] [varchar](50) NULL,
	[CreationDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Matches]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[UserProfile] ([ID])
GO

INSERT INTO GiftExchange.dbo.Matches VALUES(1, 'Kyle Caspermeyer', 'Fischer Christmas', CAST(GETDATE() AS DATE))
INSERT INTO GiftExchange.dbo.Matches VALUES(2, 'Zac Caspermeyer', 'Fischer Christmas', CAST(GETDATE() AS DATE))
INSERT INTO GiftExchange.dbo.Matches VALUES(1, 'Mark Clifton', 'Dailing Christmas', CAST(GETDATE() AS DATE))
INSERT INTO GiftExchange.dbo.Matches VALUES(2, 'Terry Brinkman', 'Dailing Christmas', CAST(GETDATE() AS DATE))
