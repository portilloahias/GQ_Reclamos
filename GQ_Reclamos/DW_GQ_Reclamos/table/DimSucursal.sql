CREATE TABLE [dbo].[DimSucursal](
	[Id_Sucursal] [int] NOT NULL CONSTRAINT [DF_DimSucursal_Id_Sucursal]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Sucursal]),
	[Sucursal] [varchar](200) NULL,
	[SucursalPais] [varchar](200) NULL,
	[Pais] [varchar](60) NULL,
 CONSTRAINT [PK_DimSucursal] PRIMARY KEY CLUSTERED 
(
	[Id_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) 