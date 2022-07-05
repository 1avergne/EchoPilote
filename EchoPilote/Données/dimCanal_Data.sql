delete from [echo].[DimCanal]
where [CanalID] < 4

insert into [echo].[DimCanal] (CanalID, CanalDesc)
values (1, 'Ventes directes')
, (2, 'Ventes par telephone')
, (3, 'Ventes par Internet')