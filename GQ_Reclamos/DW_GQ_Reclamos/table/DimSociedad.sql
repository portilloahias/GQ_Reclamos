CREATE TABLE [dbo].[DimSociedad](
	[Id_Sociedad] [int] NOT NULL CONSTRAINT [DF_DimSociedad_Id_Sociedad]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Sociedad]),
	[CodigoSociedad] [varchar](10) NULL,
	[DescripcionSociedad] [varchar](60) NULL,
	[NombreCorto] [varchar](60) NULL,
	[Pais] [varchar](60) NULL,
	[CodigoPais] [varchar](60) NULL,
 CONSTRAINT [PK_DimSociedad] PRIMARY KEY CLUSTERED 
(
	[Id_Sociedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)