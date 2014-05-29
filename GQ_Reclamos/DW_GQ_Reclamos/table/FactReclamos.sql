CREATE TABLE [dbo].[FactReclamos](
	[Id_Area] [int] NOT NULL,
	[Id_Severidad] [int] NOT NULL,
	[Id_TipoSituacionReclamo] [int] NOT NULL,
	[Id_DetalleTipoSituacionReclamo] [int] NOT NULL,
	[Id_TransaccionOrigen] [int] NOT NULL,
	[Id_Sucursal] [int] NOT NULL,
	[Id_Sociedad] [int] NOT NULL,
	[Id_Marca] [int] NOT NULL,
	[Id_Reclamo] [int] NOT NULL,
	[Id_Vendedor] [int] NOT NULL,
	[Id_FechaReclamo] [int] NOT NULL,
	[ConteoReclamo] [int] NULL,
	[Dias] [int] NULL,
 CONSTRAINT [PK_Fact_Reclamos] PRIMARY KEY CLUSTERED 
(
	[Id_Area] ASC,
	[Id_Severidad] ASC,
	[Id_TipoSituacionReclamo] ASC,
	[Id_DetalleTipoSituacionReclamo] ASC,
	[Id_TransaccionOrigen] ASC,
	[Id_Sucursal] ASC,
	[Id_Sociedad] ASC,
	[Id_Marca] ASC,
	[Id_Reclamo] ASC,
	[Id_Vendedor] ASC,
	[Id_FechaReclamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)