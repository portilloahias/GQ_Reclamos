CREATE TABLE [dbo].[DimFecha](
	[IdFecha] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[Anno] [int] NULL,
	[Mes] [int] NULL,
	[SemanaMes] [int] NULL,
	[SemanaAnno] [int] NULL,
	[DescripcionMes] [varchar](50) NULL,
	[DescripcionDia] [varchar](50) NULL,
	[Trimestre] [varchar](50) NULL,
	[Semestre] [varchar](50) NULL,
	[DiaSemana] [int] NULL,
	[DiaMes] [int] NULL,
	[DiaAnno] [int] NULL,
	[AnnoMes] [int] NULL,
 CONSTRAINT [PK_DimFechaBaja] PRIMARY KEY CLUSTERED 
(
	[IdFecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)