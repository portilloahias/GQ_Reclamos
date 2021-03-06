USE [master]
GO
/****** Object:  Database [STADWCAL]    Script Date: 5/27/2014 3:32:31 PM ******/
CREATE DATABASE [STADWCAL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'STADWCAL', FILENAME = N'C:\Devices_cal\STADWCAL.mdf' , SIZE = 14336KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'STADWCAL_log', FILENAME = N'C:\Devices_cal\STADWCAL_log.ldf' , SIZE = 29504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [STADWCAL] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [STADWCAL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [STADWCAL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [STADWCAL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [STADWCAL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [STADWCAL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [STADWCAL] SET ARITHABORT OFF 
GO
ALTER DATABASE [STADWCAL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [STADWCAL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [STADWCAL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [STADWCAL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [STADWCAL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [STADWCAL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [STADWCAL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [STADWCAL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [STADWCAL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [STADWCAL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [STADWCAL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [STADWCAL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [STADWCAL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [STADWCAL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [STADWCAL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [STADWCAL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [STADWCAL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [STADWCAL] SET RECOVERY FULL 
GO
ALTER DATABASE [STADWCAL] SET  MULTI_USER 
GO
ALTER DATABASE [STADWCAL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [STADWCAL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [STADWCAL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [STADWCAL] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [STADWCAL] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'STADWCAL', N'ON'
GO
USE [STADWCAL]
GO
/****** Object:  User [sapbi]    Script Date: 5/27/2014 3:32:31 PM ******/
CREATE USER [sapbi] FOR LOGIN [sapbi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [GQSV\sapbi]    Script Date: 5/27/2014 3:32:31 PM ******/
CREATE USER [GQSV\sapbi] FOR LOGIN [GQSV\sapbi] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [sapbi]
GO
ALTER ROLE [db_owner] ADD MEMBER [GQSV\sapbi]
GO
USE [STADWCAL]
GO
/****** Object:  Sequence [dbo].[Seq_Dim_Area]    Script Date: 5/27/2014 3:32:31 PM ******/
CREATE SEQUENCE [dbo].[Seq_Dim_Area] 
 AS [int]
 START WITH -2147483648
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [dbo].[Conf_Conexiones]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Conf_Conexiones](
	[IdConfiguracion] [int] NULL,
	[CodigoSociedad] [varchar](50) NULL,
	[DescripcionSociedad] [varchar](150) NULL,
	[ConnectionString] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_ban_sucursal]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[st_ban_sucursal](
	[codigo_sociedad] [char](4) NULL,
	[id_sucursal] [int] NULL,
	[id_form] [varchar](21) NULL,
	[nombre] [varchar](101) NULL,
	[codigo_SAP] [varchar](101) NULL,
	[ubicacion] [varchar](201) NULL,
	[direccion_fisica] [text] NULL,
	[estado] [varchar](11) NULL,
	[codigo_cliente_ocacional] [varchar](251) NULL,
	[codigo_centro] [varchar](5) NULL,
	[Id_DW] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_marca]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[st_marca](
	[codigo_sociedad] [char](4) NULL,
	[id_marca] [int] NULL,
	[codigo_marca_sap] [varchar](10) NULL,
	[nombre] [varchar](41) NULL,
	[estado] [varchar](10) NULL,
	[observaciones] [varchar](256) NULL,
	[id_form] [varchar](21) NULL,
	[tipo] [varchar](10) NULL,
	[admin_marca] [varchar](76) NULL,
	[admin_marca_telefono] [varchar](50) NULL,
	[plantilla] [varchar](12) NULL,
	[codigo_crediq] [varchar](11) NULL,
	[taller] [varchar](51) NULL,
	[gerente_marca] [varchar](81) NULL,
	[email_gerente] [text] NULL,
	[solicitud_precio] [varchar](10) NULL,
	[expo_incio_entrega] [datetime] NULL,
	[infografia] [varchar](256) NULL,
	[expo_cantidad_semana] [int] NULL,
	[id_DW] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_mdr_area]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_mdr_clasificacion_item]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_mdr_reclamo]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[st_mdr_reclamo](
	[codigo_sociedad] [char](4) NULL,
	[id_mdr_reclamo] [int] NULL,
	[fk_id_ssa_email_to_db_email] [varchar](256) NULL,
	[fk_id_mdr_clasificacion_item] [int] NULL,
	[fk_id_vendedor_ingreso] [int] NULL,
	[fk_id_sucursal] [int] NULL,
	[fk_id_mdr_area] [int] NULL,
	[fk_mdr_id_transaccion] [int] NULL,
	[fk_id_cliente] [int] NULL,
	[fk_id_marca] [int] NULL,
	[fk_sid_encuesta] [varchar](31) NULL,
	[nombre_cliente] [varchar](71) NULL,
	[email_cliente] [varchar](146) NULL,
	[telefono_cli] [varchar](16) NULL,
	[tipo_cliente] [varchar](15) NULL,
	[valor_transaccion] [char](21) NULL,
	[nombre_del_contacto] [varchar](256) NULL,
	[numero_caso] [char](41) NULL,
	[tipo_caso] [varchar](11) NULL,
	[cliente_satisfecho] [char](3) NULL,
	[fecha_registro] [datetime] NULL,
	[descripcion_reclamo_cliente] [text] NULL,
	[descripcion_reclamo_vendedor] [text] NULL,
	[origen_reclamo] [varchar](16) NULL,
	[estado_reclamo] [varchar](16) NULL,
	[estado_resolucion] [char](3) NULL,
	[fk_id_mdr_usuario_reasigna] [int] NULL,
	[fecha_reasigna] [datetime] NULL,
	[fk_id_mdr_reclamo] [int] NULL,
	[DiasReclamo] [int] NULL,
	[Antiguedad] [varchar](50) NULL,
	[Id_DW] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_mdr_reclamo_asignado]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_mdr_severidad]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_mdr_tipo_item]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[st_mdr_tipo_item](
	[codigo_sociedad] [char](4) NULL,
	[id_st_tipo_item] [int] NULL,
	[descripcion] [varchar](51) NULL,
	[estado] [varchar](10) NULL,
	[Id_DW] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_mdr_transaccion]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[st_mdr_transaccion](
	[codigo_sociedad] [char](4) NULL,
	[id_st_transaccion] [int] NULL,
	[descripcion] [varchar](51) NULL,
	[estado] [varchar](10) NULL,
	[Id_DW] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_mdr_usuario]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[st_mdr_usuario](
	[codigo_sociedad] [char](4) NULL,
	[id_st_usuario] [int] NULL,
	[fk_id_vendedor] [int] NULL,
	[fk_id_area] [int] NULL,
	[fk_id_sucursal] [int] NULL,
	[fk_id_st_tipo_usuario_area] [int] NULL,
	[estado] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_vendedor]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[st_vendedor](
	[codigo_sociedad] [char](4) NULL,
	[id_vendedor] [int] NULL,
	[nombre] [varchar](81) NULL,
	[identificacion] [varchar](21) NULL,
	[usuario] [varchar](19) NULL,
	[clave] [varchar](11) NULL,
	[correo] [varchar](33) NULL,
	[estado] [varchar](10) NULL,
	[puesto] [varchar](81) NULL,
	[telefono] [varchar](51) NULL,
	[celular] [varchar](11) NULL,
	[celular2] [varchar](11) NULL,
	[id_form] [varchar](21) NULL,
	[fax] [varchar](21) NULL,
	[id_department] [int] NULL,
	[tipo] [varchar](35) NULL,
	[id_oficial_credito] [int] NULL,
	[ligar_a_marca] [varchar](3) NULL,
	[fk_id_sucursal] [int] NULL,
	[vende] [varchar](10) NULL,
	[acceso_cotizador] [char](3) NULL,
	[acceso_pommo] [char](3) NULL,
	[acceso_encuestas] [char](2) NULL,
	[acceso_ipad_expo] [char](3) NULL,
	[acceso_call_center_expo] [char](3) NULL,
	[acceso_cotizador_repuestos] [char](3) NULL,
	[editar_vendedor_cotizacion_repuestos] [char](3) NULL,
	[version_navegador] [varchar](231) NULL,
	[primer_ingreso] [char](2) NULL,
	[pertenece_flotas] [char](3) NULL,
	[actualiza_cliente] [char](3) NULL,
	[ultimo_cambio_clave] [date] NULL,
	[ultimo_ingreso] [datetime] NULL,
	[verifica_cambio_de_clave] [char](4) NULL,
	[codigo_empleado] [int] NULL,
	[codigo_crediq] [varchar](11) NULL,
	[tipo_logistica] [varchar](163) NULL,
	[id_gestor_credito_asignado] [int] NULL,
	[id_centro_alistamiento] [int] NULL,
	[id_sala_entrega] [int] NULL,
	[id_encargado] [int] NULL,
	[usuario_sap] [varchar](21) NULL,
	[rol_isc] [int] NULL,
	[regional] [char](4) NULL,
	[id_regional] [int] NULL,
	[canal] [varchar](11) NULL,
	[id_gerente] [int] NULL,
	[fecha_control_preorden] [date] NULL,
	[cantidad_vhcle_z300] [int] NULL,
	[avaluos] [int] NULL,
	[id_rol_gerente] [int] NULL,
	[acceso_taller] [char](3) NULL,
	[canal_taller] [varchar](11) NULL,
	[extension] [varchar](9) NULL,
	[acceso_serviq] [char](6) NULL,
	[alistamiento] [int] NULL,
	[fk_id_rol_general] [int] NULL,
	[cliente_relacionado] [varchar](11) NULL,
	[firma_vendedor] [varchar](51) NULL,
	[filtro_sucursal_vendedor] [char](6) NULL,
	[rolesAgenda] [varchar](99) NULL,
	[acceso_campana] [char](6) NULL,
	[estado_verificacion] [char](3) NULL,
	[fk_id_prv_usuario_rol] [int] NULL,
	[fk_id_ssa_logistica_rol_descuento] [int] NULL,
	[Id_DW] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_ZQEV_BO_SECTORES]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[st_ZQEV_BO_SECTORES](
	[spart] [nchar](10) NULL,
	[matkl] [nvarchar](50) NULL,
	[sector_desc] [nvarchar](50) NULL,
	[sector_unif] [nvarchar](60) NULL,
	[sector_fina] [nvarchar](60) NULL,
	[ID_DW] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[st_ZQEV_DBMSOCIEDAD]    Script Date: 5/27/2014 3:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[st_ZQEV_DBMSOCIEDAD](
	[BUKRS] [nchar](10) NULL,
	[BUTXT] [nvarchar](50) NULL,
	[NOMBREM] [nvarchar](50) NULL,
	[NOMBREC] [nvarchar](50) NULL,
	[ORT01] [nvarchar](50) NULL,
	[LAND1] [nchar](10) NULL,
	[WAERS] [nvarchar](50) NULL,
	[SPRAS] [nchar](10) NULL,
	[FECHATASA] [datetime] NULL,
	[VALIDO] [nvarchar](50) NULL,
	[Id_DW] [int] NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [STADWCAL] SET  READ_WRITE 
GO
