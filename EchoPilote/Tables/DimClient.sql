CREATE TABLE [echo].[DimClient]
(
  [ClientID] [int] NOT NULL PRIMARY KEY,
	[ClientDesc] [nvarchar](50) NOT NULL,
	[TypeClientDesc] [nvarchar](50) NOT NULL,
	[VilleClientDesc] [nvarchar](50) NOT NULL,
	[CodePostalClient] [nvarchar](50) NULL,
	[PaysClientDesc] [nvarchar](50) NOT NULL
)
