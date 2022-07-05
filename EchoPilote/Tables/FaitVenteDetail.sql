CREATE TABLE [echo].[FaitVenteDetail](
	[ClientID] [int] NOT NULL,
	[ProduitID] [int] NOT NULL,
	[CommercialID] [int] NOT NULL,
	[DateID] [int] NOT NULL,
	[CanalID] [int] NOT NULL,
	[Quantite] [int] NULL,
	[Prix] [int] NULL,
	[Remise] [int] NULL,
	[Cout] [int] NULL
) ON [PRIMARY]
GO
