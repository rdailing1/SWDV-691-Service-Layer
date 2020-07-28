USE [GiftExchange]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Relationship_View]
AS

SELECT up.[Name],
	   up.Email,
	   g.[Group],
	   up1.[Name] AS [Related],
	   rel.Relationship,
	   rc.Category
  FROM dbo.UserProfile up
 INNER JOIN dbo.Relationships rel
	ON up.ID = rel.UserID
 INNER JOIN dbo.[Group] g
	ON rel.GroupID = g.ID
 INNER JOIN dbo.UserProfile up1
	ON rel.RelatedID = up1.ID
  LEFT JOIN dbo.RelationshipCategories rc
	ON rel.Relationship = rc.Relationship
GO
