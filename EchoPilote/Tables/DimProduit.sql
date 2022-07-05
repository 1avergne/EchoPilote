CREATE TABLE [dbo].[DimProduit](
	[ProduitID] [int] NOT NULL PRIMARY KEY,
	[ProduitDesc] [nvarchar](50) NOT NULL,
	[GammeDesc] [nvarchar](50) NOT NULL,
	[TypeProduitDesc] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
