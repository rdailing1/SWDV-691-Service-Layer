USE GiftExchange
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.UserProfile(
	ID [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	Email [varchar](50) NULL,
	Password [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO GiftExchange.dbo.UserProfile VALUES('Randy Dailing', 'rldail@earthlink.net', 'password')
INSERT INTO GiftExchange.dbo.UserProfile VALUES('Carol Dailing', 'cmdail@earthlink.net', 'password')
INSERT INTO GiftExchange.dbo.UserProfile VALUES('Meg Dailing', 'medmkn@mail.missouri.edu', 'password')
INSERT INTO GiftExchange.dbo.UserProfile VALUES('Taylor Dailing', 'tadzq8@gmail.com', 'password')
INSERT INTO GiftExchange.dbo.UserProfile VALUES('Terry Brinkman', 'terry@change.net', 'password')
INSERT INTO GiftExchange.dbo.UserProfile VALUES('Mark Clifton', 'cliff5080@yahoo.com', 'password')
INSERT INTO GiftExchange.dbo.UserProfile VALUES('Kyle Caspermeyer', 'kyle@change.net', 'password')
INSERT INTO GiftExchange.dbo.UserProfile VALUES('Zac Caspermeyer', 'zac@change.net', 'password')
INSERT INTO GiftExchange.dbo.UserProfile VALUES('Angie Schmitz', 'angela.schmitz@bjc.org', 'password')
INSERT INTO GiftExchange.dbo.UserProfile VALUES('Mike Furey', 'mike.furey@bjc.org', 'password')
INSERT INTO GiftExchange.dbo.UserProfile VALUES('Chris Williams', 'christopher.williams@bjc.org', 'password')
GO
