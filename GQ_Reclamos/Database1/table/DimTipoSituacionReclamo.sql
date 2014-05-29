CREATE TABLE [dbo].[DimTipoSituacionReclamo](
	[Id_TipoSituacionReclamo] [int] NOT NULL CONSTRAINT [DF_DimTipoSituacionReclamo_Id_TipoSituacionReclamo]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Tipo_Situacion_Reclamo]),
	[DescripcionTipoSituacionReclamo] [varchar](60) NULL,
 CONSTRAINT [PK_DimTipoSituacionReclamo] PRIMARY KEY CLUSTERED 
(
	[Id_TipoSituacionReclamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)