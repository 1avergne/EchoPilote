CREATE view [echo].[Vente]
as
with os as (
select top 1 YEAR(GETDATE()) - MAX(FLOOR([DateID]/10000)) - 1 as [Offset]
from [echo].[FaitVenteDetail] v
)
SELECT [ClientID]
,[ProduitID]
,[CommercialID]
,dateadd(year, os.Offset, convert(date, format([DateID], '0000-00-00'))) as [Date]
,case when c.[CanalDesc] = 'Ventes directes' and [Prix] < 10000 then dateadd(year, os.Offset, convert(date, format([DateID], '0000-00-00')))
	else dateadd(day, ceiling(LOG10([Quantite] * [Prix])), dateadd(year, os.Offset, convert(date, format([DateID], '0000-00-00'))))
	end as [DateEnvoi]
,c.[CanalDesc]
,[Quantite]
,[Prix] 
,case when [Remise] > [Prix] then 1 else  round(convert(numeric(18,4), [Remise]) / convert(numeric(18,4), [Prix]), 2) end as [Remise]
,[Cout]
FROM [echo].[FaitVenteDetail] v
inner join [echo].[DimCanal] c on c.[CanalID] = v.[CanalID]
, os
GO
