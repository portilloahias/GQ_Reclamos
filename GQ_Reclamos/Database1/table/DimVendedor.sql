CREATE TABLE [dbo].[DimVendedor](
	[Id_Vendedor] [int] NOT NULL CONSTRAINT [DF_DimVendedor_Id_Vendedor]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Vendedor]),
	[Vendedor] [varchar](100) NULL,
	[VendedorPais] [varchar](100) NULL,
 CONSTRAINT [PK_DimVendedor] PRIMARY KEY CLUSTERED 
(
	[Id_Vendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)
