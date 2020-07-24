USE [GiftExchange]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Relationships](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
	[RelatedID] [int] NOT NULL,
	[Relationship] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Relationships]  WITH CHECK ADD FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([ID])
GO

ALTER TABLE [dbo].[Relationships]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[UserProfile] ([ID])
GO


-- Group 1 (Fischer Christmas)
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,1,2,'Wife')
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,1,3,'Daughter')
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,1,4,'Daughter')
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,1,7,'Nephew')
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,1,8,'Nephew')

INSERT INTO GiftExchange.dbo.Relationships VALUES(2,1,1,'Husband')
INSERT INTO GiftExchange.dbo.Relationships VALUES(2,1,3,'Daughter')
INSERT INTO GiftExchange.dbo.Relationships VALUES(2,1,4,'Daughter')
INSERT INTO GiftExchange.dbo.Relationships VALUES(2,1,7,'Nephew')
INSERT INTO GiftExchange.dbo.Relationships VALUES(2,1,8,'Nephew')

INSERT INTO GiftExchange.dbo.Relationships VALUES(3,1,1,'Father')
INSERT INTO GiftExchange.dbo.Relationships VALUES(3,1,2,'Mother')
INSERT INTO GiftExchange.dbo.Relationships VALUES(3,1,4,'Sister')
INSERT INTO GiftExchange.dbo.Relationships VALUES(3,1,7,'Cousin')
INSERT INTO GiftExchange.dbo.Relationships VALUES(3,1,8,'Cousin')

INSERT INTO GiftExchange.dbo.Relationships VALUES(4,1,1,'Father')
INSERT INTO GiftExchange.dbo.Relationships VALUES(4,1,2,'Mother')
INSERT INTO GiftExchange.dbo.Relationships VALUES(4,1,4,'Sister')
INSERT INTO GiftExchange.dbo.Relationships VALUES(4,1,7,'Cousin')
INSERT INTO GiftExchange.dbo.Relationships VALUES(4,1,8,'Cousin')

-- Group 2 (Dailing Christmas)
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,2,2,'Wife')
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,2,3,'Daughter')
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,2,4,'Daughter')
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,2,5,'Sister')
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,2,6,'Brother-in-Law')

INSERT INTO GiftExchange.dbo.Relationships VALUES(2,2,1,'Husband')
INSERT INTO GiftExchange.dbo.Relationships VALUES(2,2,3,'Daughter')
INSERT INTO GiftExchange.dbo.Relationships VALUES(2,2,4,'Daughter')
INSERT INTO GiftExchange.dbo.Relationships VALUES(2,2,5,'Sister-in-Law')
INSERT INTO GiftExchange.dbo.Relationships VALUES(2,2,6,'Brother-in-Law')

INSERT INTO GiftExchange.dbo.Relationships VALUES(3,2,1,'Father')
INSERT INTO GiftExchange.dbo.Relationships VALUES(3,2,2,'Mother')
INSERT INTO GiftExchange.dbo.Relationships VALUES(3,2,4,'Sister')
INSERT INTO GiftExchange.dbo.Relationships VALUES(3,2,5,'Aunt')
INSERT INTO GiftExchange.dbo.Relationships VALUES(3,2,6,'Uncle')

INSERT INTO GiftExchange.dbo.Relationships VALUES(4,2,1,'Father')
INSERT INTO GiftExchange.dbo.Relationships VALUES(4,2,2,'Mother')
INSERT INTO GiftExchange.dbo.Relationships VALUES(4,2,4,'Sister')
INSERT INTO GiftExchange.dbo.Relationships VALUES(4,2,5,'Aunt')
INSERT INTO GiftExchange.dbo.Relationships VALUES(4,2,6,'Uncle')

-- Group 4 (BJC Christmas)
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,4,9,'Peer')
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,4,10,'Manager')
INSERT INTO GiftExchange.dbo.Relationships VALUES(1,4,11,'Peer')
