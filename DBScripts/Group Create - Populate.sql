USE GiftExchange
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.[Group](
	ID [int] IDENTITY(1,1) NOT NULL,
	[Group] [varchar](50) NULL,
	EventDate [date] NULL,
PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO GiftExchange.dbo.[Group] VALUES('Fischer Christmas', '2020-12-19')
INSERT INTO GiftExchange.dbo.[Group] VALUES('Dailing Christmas', '2020-12-19')
INSERT INTO GiftExchange.dbo.[Group] VALUES('IRS Christmas', '2020-12-16')
INSERT INTO GiftExchange.dbo.[Group] VALUES('BJC Christmas', '2020-12-16')
GO
