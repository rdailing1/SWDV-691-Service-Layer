USE [GiftExchange]
GO

/****** Object:  Table [dbo].[UserGroups]    Script Date: 8/1/2020 7:54:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserGroups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Group] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO UserGroups values (2, 'Fischer Christmas')
INSERT INTO UserGroups values (2, 'Dailing Christmas')
INSERT INTO UserGroups values (3, 'Fischer Christmas')
INSERT INTO UserGroups values (3, 'Dailing Christmas')
INSERT INTO UserGroups values (4, 'Fischer Christmas')
INSERT INTO UserGroups values (4, 'Dailing Christmas')
INSERT INTO UserGroups values (5, 'Dailing Christmas')
INSERT INTO UserGroups values (6, 'Dailing Christmas')
INSERT INTO UserGroups values (7, 'Fischer Christmas')
INSERT INTO UserGroups values (8, 'Fischer Christmas')
INSERT INTO UserGroups values (9, 'BJC Christmas')
INSERT INTO UserGroups values (10, 'BJC Christmas')
INSERT INTO UserGroups values (11, 'BJC Christmas')
