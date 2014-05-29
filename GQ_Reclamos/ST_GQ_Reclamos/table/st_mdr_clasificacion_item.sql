CREATE TABLE [dbo].[st_mdr_clasificacion_item](
	[codigo_sociedad] [char](4) NULL,
	[id_st_clasificacion_item] [int] NULL,
	[fk_id_st_severidad] [int] NULL,
	[fk_st_id_area] [int] NULL,
	[fk_id_st_tipo_item] [int] NULL,
	[codigo] [char](11) NULL,
	[descripcion] [varchar](51) NULL,
	[fecha_ingreso] [datetime] NULL,
	[estado] [varchar](10) NULL,
	[tipo_caso] [varchar](10) NULL,
	[Id_DW] [int] NULL
) 