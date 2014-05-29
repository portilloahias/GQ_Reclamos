CREATE TABLE [dbo].[st_mdr_area](
	[codigo_sociedad] [char](4) NULL,
	[id_mdr_area] [int] NULL,
	[fk_id_mdr_clasificacion_item] [int] NULL,
	[descripcion] [varchar](60) NULL,
	[codigo_homologacion_isc] [char](11) NULL,
	[estado] [char](20) NULL,
	[identificador] [char](6) NULL,
	[consecutivo] [int] NULL,
	[Id_DW] [int] NULL
)