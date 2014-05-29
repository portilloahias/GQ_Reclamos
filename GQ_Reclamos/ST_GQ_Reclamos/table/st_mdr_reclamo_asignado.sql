CREATE TABLE [dbo].[st_mdr_reclamo_asignado](
	[codigo_sociedad] [char](4) NULL,
	[id_st_reclamo_asignado] [int] NULL,
	[fk_id_st_reclamo] [int] NULL,
	[fk_id_st_usuario] [int] NULL,
	[fecha_asignado] [datetime] NULL,
	[escalado] [char](10) NULL,
	[reasignado] [int] NULL,
	[fecha_cierre] [datetime] NULL,
	[fecha_congelado] [datetime] NULL,
	[fecha_descongelado] [datetime] NULL,
	[nivel] [char](10) NULL,
	[estado] [varchar](20) NULL,
	[escalamiento] [varchar](20) NULL
)