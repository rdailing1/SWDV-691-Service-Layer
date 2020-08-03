USE [GiftExchange]
GO

/****** Object:  Table [dbo].[RelationshipCategories]    Script Date: 8/3/2020 2:33:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RelationshipCategories](
	[Relationship] [varchar](100) NOT NULL,
	[Category] [varchar](100) NOT NULL
) ON [PRIMARY]
GO


INSERT INTO dbo.RelationshipCategories VALUES('Aunt','Sibling-Peer-Other')
INSERT INTO dbo.RelationshipCategories VALUES('Boyfriend','Child-Employee-Spouse')
INSERT INTO dbo.RelationshipCategories VALUES('Brother-in-Law','Sibling-Peer-Other')
INSERT INTO dbo.RelationshipCategories VALUES('Cousin','Sibling-Peer-Other')
INSERT INTO dbo.RelationshipCategories VALUES('Daughter','Child-Employee-Spouse')
INSERT INTO dbo.RelationshipCategories VALUES('Father','Parent-Manager')
INSERT INTO dbo.RelationshipCategories VALUES('Father-in-Law','Parent-Manager')
INSERT INTO dbo.RelationshipCategories VALUES('Friend','Sibling-Peer-Other')
INSERT INTO dbo.RelationshipCategories VALUES('Girlfriend','Child-Employee-Spouse')
INSERT INTO dbo.RelationshipCategories VALUES('Grandfather','Parent-Manager')
INSERT INTO dbo.RelationshipCategories VALUES('Grandmother','Parent-Manager')
INSERT INTO dbo.RelationshipCategories VALUES('Grandson','Sibling-Peer-Other')
INSERT INTO dbo.RelationshipCategories VALUES('Granddaughter','Sibling-Peer-Other')
INSERT INTO dbo.RelationshipCategories VALUES('Husband','Child-Employee-Spouse')
INSERT INTO dbo.RelationshipCategories VALUES('Manager','Parent-Manager')
INSERT INTO dbo.RelationshipCategories VALUES('Mother','Parent-Manager')
INSERT INTO dbo.RelationshipCategories VALUES('Mother-in-Law','Parent-Manager')
INSERT INTO dbo.RelationshipCategories VALUES('Nephew','Sibling-Peer-Other')
INSERT INTO dbo.RelationshipCategories VALUES('Peer','Sibling-Peer-Other')
INSERT INTO dbo.RelationshipCategories VALUES('Sister','Sibling-Peer-Other')
INSERT INTO dbo.RelationshipCategories VALUES('Sister-in-Law','Sibling-Peer-Other')
INSERT INTO dbo.RelationshipCategories VALUES('Son','Child-Employee-Spouse')
INSERT INTO dbo.RelationshipCategories VALUES('Uncle','Sibling-Peer-Other')
INSERT INTO dbo.RelationshipCategories VALUES('Wife','Child-Employee-Spouse')
