CREATE TABLE [echo].[DimCommercial](
	[CommercialID] [int] NOT NULL PRIMARY KEY,
	[CommercialDesc] [nvarchar](50) NOT NULL,
	[SuccursaleDesc] [nvarchar](50) NOT NULL,
	[PaysDesc] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
