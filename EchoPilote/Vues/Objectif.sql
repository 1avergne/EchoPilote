create view [echo].[Objectif]
as
with os as (
select top 1 YEAR(GETDATE()) - MAX(FLOOR([DateID]/10000)) - 1 as [Offset]
from [echo].[FaitVenteDetail] v
)
SELECT TOP (1000) [CommercialID]
      ,[Annee] + os.[Offset] as [Annee]
      ,[Objectif] 
  FROM [echo].[FaitObjectif], os

GO
