USE [GiftExchange]
GO

/****** Object:  Table [dbo].[WishList]    Script Date: 7/20/2020 10:36:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WishList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[UserGroup] [varchar](50) NULL,
	[Item] [varchar](max) NULL,
	[Purchased] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[WishList]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[UserProfile] ([ID])
GO

INSERT INTO GiftExchange.dbo.WishList VALUES(1,'Fischer Christmas','DVDs',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(1,'Fischer Christmas','Drone',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(2,'Fischer Christmas','Perfume',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(2,'Fischer Christmas','iPad',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(3,'Fischer Christmas','Money',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(3,'Fischer Christmas','iPad',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(4,'Fischer Christmas','iPhone',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(4,'Fischer Christmas','iPad',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(7,'Fischer Christmas','iPhone',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(7,'Fischer Christmas','iPad',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(8,'Fischer Christmas','iPhone',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(8,'Fischer Christmas','iPad',0)

INSERT INTO GiftExchange.dbo.WishList VALUES(1,'Dailing Christmas','DVDs',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(1,'Dailing Christmas','Drone',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(2,'Dailing Christmas','Perfume',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(2,'Dailing Christmas','iPad',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(3,'Dailing Christmas','Money',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(3,'Dailing Christmas','iPad',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(4,'Dailing Christmas','iPhone',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(4,'Dailing Christmas','iPad',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(5,'Dailing Christmas','iPhone',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(5,'Dailing Christmas','iPad',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(6,'Dailing Christmas','iPhone',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(6,'Dailing Christmas','iPad',0)

INSERT INTO GiftExchange.dbo.WishList VALUES(1,'BJC Christmas','DVDs',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(1,'BJC Christmas','Drone',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(9,'BJC Christmas','DVDs',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(9,'BJC Christmas','Drone',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(10,'BJC Christmas','DVDs',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(10,'BJC Christmas','Drone',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(11,'BJC Christmas','DVDs',0)
INSERT INTO GiftExchange.dbo.WishList VALUES(11,'BJC Christmas','Drone',0)
