CREATE TABLE [dbo].[st_mdr_usuario](
	[codigo_sociedad] [char](4) NULL,
	[id_st_usuario] [int] NULL,
	[fk_id_vendedor] [int] NULL,
	[fk_id_area] [int] NULL,
	[fk_id_sucursal] [int] NULL,
	[fk_id_st_tipo_usuario_area] [int] NULL,
	[estado] [varchar](10) NULL
)