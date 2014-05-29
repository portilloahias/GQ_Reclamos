CREATE TABLE [dbo].[DimDetalleTipoSituacionReclamo](
	[Id_DetalleTipoSituacionReclamo] [int] NOT NULL CONSTRAINT [DF_DimDetalleTipoSituacionReclamo_Id_DetalleTipoSituacionReclamo]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Detalle_Tipo_Situacion_Reclamo]),
	[DescripcionDetalleTipoSituacionReclamo] [varchar](60) NULL CONSTRAINT [DF_DimDetalleTipoSituacionReclamo_DescripcionDetalleTipoSituacionReclamo]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Detalle_Tipo_Situacion_Reclamo]),
 CONSTRAINT [PK_DimDetalleTipoSituacionReclamo] PRIMARY KEY CLUSTERED 
(
	[Id_DetalleTipoSituacionReclamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)