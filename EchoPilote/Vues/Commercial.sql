create view [echo].[Commercial]
as
SELECT TOP (1000) [CommercialID]
      ,[CommercialDesc]
      ,[SuccursaleDesc]
      ,[PaysDesc]
	  , translate(replace(lower(LEFT([CommercialDesc], 1) + substring([CommercialDesc], 1 + CHARINDEX(' ', [CommercialDesc]), 25)), ' ', ''), 'éè', 'ee') + '@echopilote.com' as [Mail]
  FROM [echo].[DimCommercial]
GO
