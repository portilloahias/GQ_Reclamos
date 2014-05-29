CREATE TABLE [dbo].[st_mdr_severidad](
	[codigo_sociedad] [char](4) NULL,
	[id_st_severidad] [int] NULL,
	[descripcion] [varchar](51) NULL,
	[color_representativo] [char](11) NULL,
	[fecha_ingreso] [datetime] NULL,
	[tiempo_resolucion_interna] [int] NULL,
	[tiempo_cierre_maximo] [int] NULL,
	[dias_congelado] [int] NULL,
	[tipo] [varchar](10) NULL,
	[estado] [varchar](10) NULL,
	[Id_DW] [int] NULL
)