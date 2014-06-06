CREATE TABLE [dbo].[DimReclamo](
	[Id_Reclamo] [int] NOT NULL CONSTRAINT [DF_DimReclamo_Id_Reclamo]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Reclamo]),
	[EstadoReclamo] [varchar](60) NULL,
	[Origen] [varchar](60) NULL,
	[TipoCaso] [varchar](60) NULL,
	[DiasAntiguedad] [varchar](60) NULL,
	[Antiguedad] [varchar](60) NULL,
	[NumeroCaso] [varchar](60) NULL,
	[CodigoReclamo] [varchar](60) NULL,
	[HorasAntiguedad] [varchar](60) NULL,
	[AntiguedadHoras] [varchar](60) NULL,
 CONSTRAINT [PK_DimReclamo] PRIMARY KEY CLUSTERED 
(
	[Id_Reclamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)