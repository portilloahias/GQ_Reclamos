CREATE TABLE [dbo].[TMP_FactReclamos](
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
	[ConteoReclamo] [int] NOT NULL,
	[Codigo_Sociedad] [char](4) NULL,
	[id_mdr_reclamo] [int] NULL,
	[Dias] [int] NULL
) 