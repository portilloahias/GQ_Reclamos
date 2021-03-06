USE [master]
GO
/****** Object:  Database [BIDWGQCAL]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE DATABASE [BIDWGQCAL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BIDWGQCAL', FILENAME = N'C:\Devices_cal\BIDWGQCAL.mdf' , SIZE = 9216KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BIDWGQCAL_log', FILENAME = N'C:\Devices_cal\BIDWGQCAL_log.ldf' , SIZE = 136064KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BIDWGQCAL] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BIDWGQCAL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BIDWGQCAL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET ARITHABORT OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BIDWGQCAL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BIDWGQCAL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BIDWGQCAL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BIDWGQCAL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET RECOVERY FULL 
GO
ALTER DATABASE [BIDWGQCAL] SET  MULTI_USER 
GO
ALTER DATABASE [BIDWGQCAL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BIDWGQCAL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BIDWGQCAL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BIDWGQCAL] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BIDWGQCAL] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BIDWGQCAL', N'ON'
GO
USE [BIDWGQCAL]
GO
/****** Object:  User [sapbi]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE USER [sapbi] FOR LOGIN [sapbi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [GQSV\sapbi]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE USER [GQSV\sapbi] FOR LOGIN [GQSV\sapbi] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [sapbi]
GO
ALTER ROLE [db_owner] ADD MEMBER [GQSV\sapbi]
GO
USE [BIDWGQCAL]
GO
/****** Object:  Sequence [dbo].[Seq_Dim_Area]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE SEQUENCE [dbo].[Seq_Dim_Area] 
 AS [int]
 START WITH 0
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 2147483647
 CACHE 
GO
USE [BIDWGQCAL]
GO
/****** Object:  Sequence [dbo].[Seq_Dim_Detalle_Tipo_Situacion_Reclamo]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE SEQUENCE [dbo].[Seq_Dim_Detalle_Tipo_Situacion_Reclamo] 
 AS [int]
 START WITH 0
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 2147483647
 CACHE 
GO
USE [BIDWGQCAL]
GO
/****** Object:  Sequence [dbo].[Seq_Dim_Marca]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE SEQUENCE [dbo].[Seq_Dim_Marca] 
 AS [int]
 START WITH 0
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 2147483647
 CACHE 
GO
USE [BIDWGQCAL]
GO
/****** Object:  Sequence [dbo].[Seq_Dim_Reclamo]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE SEQUENCE [dbo].[Seq_Dim_Reclamo] 
 AS [int]
 START WITH 0
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 2147483647
 CACHE 
GO
USE [BIDWGQCAL]
GO
/****** Object:  Sequence [dbo].[Seq_Dim_Severidad]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE SEQUENCE [dbo].[Seq_Dim_Severidad] 
 AS [int]
 START WITH 0
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 2147483647
 CACHE 
GO
USE [BIDWGQCAL]
GO
/****** Object:  Sequence [dbo].[Seq_Dim_Sociedad]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE SEQUENCE [dbo].[Seq_Dim_Sociedad] 
 AS [int]
 START WITH 0
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 2147483647
 CACHE 
GO
USE [BIDWGQCAL]
GO
/****** Object:  Sequence [dbo].[Seq_Dim_Sucursal]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE SEQUENCE [dbo].[Seq_Dim_Sucursal] 
 AS [int]
 START WITH 0
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 2147483647
 CACHE 
GO
USE [BIDWGQCAL]
GO
/****** Object:  Sequence [dbo].[Seq_Dim_Tipo_Situacion_Reclamo]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE SEQUENCE [dbo].[Seq_Dim_Tipo_Situacion_Reclamo] 
 AS [int]
 START WITH 0
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 2147483647
 CACHE 
GO
USE [BIDWGQCAL]
GO
/****** Object:  Sequence [dbo].[Seq_Dim_TransaccionOrigen]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE SEQUENCE [dbo].[Seq_Dim_TransaccionOrigen] 
 AS [int]
 START WITH 0
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 2147483647
 CACHE 
GO
USE [BIDWGQCAL]
GO
/****** Object:  Sequence [dbo].[Seq_Dim_Vendedor]    Script Date: 6/6/2014 2:51:04 PM ******/
CREATE SEQUENCE [dbo].[Seq_Dim_Vendedor] 
 AS [int]
 START WITH 0
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [dbo].[DimArea]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimArea](
	[Id_Area] [int] NOT NULL CONSTRAINT [DF_DIMArea_Id_Area]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Area]),
	[DescripcionArea] [varchar](60) NULL,
 CONSTRAINT [PK_DIMArea] PRIMARY KEY CLUSTERED 
(
	[Id_Area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimDetalleTipoSituacionReclamo]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimDetalleTipoSituacionReclamo](
	[Id_DetalleTipoSituacionReclamo] [int] NOT NULL CONSTRAINT [DF_DimDetalleTipoSituacionReclamo_Id_DetalleTipoSituacionReclamo]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Detalle_Tipo_Situacion_Reclamo]),
	[DescripcionDetalleTipoSituacionReclamo] [varchar](60) NULL CONSTRAINT [DF_DimDetalleTipoSituacionReclamo_DescripcionDetalleTipoSituacionReclamo]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Detalle_Tipo_Situacion_Reclamo]),
 CONSTRAINT [PK_DimDetalleTipoSituacionReclamo] PRIMARY KEY CLUSTERED 
(
	[Id_DetalleTipoSituacionReclamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimFecha]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimMarca]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimMarca](
	[Id_Marca] [int] NOT NULL CONSTRAINT [DF_DIMMarca_Id_Marca]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Marca]),
	[DescripcionMarca] [varchar](60) NULL,
 CONSTRAINT [PK_DIMMarca] PRIMARY KEY CLUSTERED 
(
	[Id_Marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimNivel]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimNivel](
	[Id_Nivel] [int] NOT NULL,
	[Nivel] [varchar](10) NULL,
 CONSTRAINT [PK_DimNivel] PRIMARY KEY CLUSTERED 
(
	[Id_Nivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimReclamo]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimSeveridad]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimSeveridad](
	[Id_Severidad] [int] NOT NULL CONSTRAINT [DF_DIMSeveridad_Id_Severidad]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Severidad]),
	[DescripcionSeveridad] [varchar](60) NULL,
 CONSTRAINT [PK_DIMSeveridad] PRIMARY KEY CLUSTERED 
(
	[Id_Severidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimSociedad]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimSociedad](
	[Id_Sociedad] [int] NOT NULL CONSTRAINT [DF_DimSociedad_Id_Sociedad]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Sociedad]),
	[CodigoSociedad] [varchar](10) NULL,
	[DescripcionSociedad] [varchar](60) NULL,
	[NombreCorto] [varchar](60) NULL,
	[Pais] [varchar](60) NULL,
	[CodigoPais] [varchar](60) NULL,
 CONSTRAINT [PK_DimSociedad] PRIMARY KEY CLUSTERED 
(
	[Id_Sociedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimSucursal]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimSucursal](
	[Id_Sucursal] [int] NOT NULL CONSTRAINT [DF_DimSucursal_Id_Sucursal]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Sucursal]),
	[Sucursal] [varchar](200) NULL,
	[SucursalPais] [varchar](200) NULL,
	[Pais] [varchar](60) NULL,
 CONSTRAINT [PK_DimSucursal] PRIMARY KEY CLUSTERED 
(
	[Id_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimTipoSituacionReclamo]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimTipoSituacionReclamo](
	[Id_TipoSituacionReclamo] [int] NOT NULL CONSTRAINT [DF_DimTipoSituacionReclamo_Id_TipoSituacionReclamo]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Tipo_Situacion_Reclamo]),
	[DescripcionTipoSituacionReclamo] [varchar](60) NULL,
 CONSTRAINT [PK_DimTipoSituacionReclamo] PRIMARY KEY CLUSTERED 
(
	[Id_TipoSituacionReclamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimTransaccionOrigen]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimTransaccionOrigen](
	[Id_TransaccionOrigen] [int] NOT NULL CONSTRAINT [DF_DimTransaccionOrigen_Id_TransaccionOrigen]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_TransaccionOrigen]),
	[DescripcionTransaccionOrigen] [varchar](60) NULL,
 CONSTRAINT [PK_DimOrigenTransaccion] PRIMARY KEY CLUSTERED 
(
	[Id_TransaccionOrigen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimVendedor]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimVendedor](
	[Id_Vendedor] [int] NOT NULL CONSTRAINT [DF_DimVendedor_Id_Vendedor]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Vendedor]),
	[Vendedor] [varchar](100) NULL,
	[VendedorPais] [varchar](100) NULL,
 CONSTRAINT [PK_DimVendedor] PRIMARY KEY CLUSTERED 
(
	[Id_Vendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FactReclamos]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FactReclamosAsignados]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactReclamosAsignados](
	[Id_Area] [int] NOT NULL,
	[Id_Severidad] [int] NOT NULL,
	[Id_TipoSituacionReclamo] [int] NOT NULL,
	[Id_DetalleTipoSituacionReclamo] [int] NOT NULL,
	[Id_TransaccionOrigen] [int] NOT NULL,
	[Id_SucursalCreacion] [int] NOT NULL,
	[Id_Sociedad] [int] NOT NULL,
	[Id_Marca] [int] NOT NULL,
	[Id_Reclamo] [int] NOT NULL,
	[Id_VendedorCreacion] [int] NOT NULL,
	[Id_FechaCreacionReclamo] [int] NOT NULL,
	[Id_SucursalAsignacion] [int] NOT NULL,
	[Id_Vendedor_Asignado] [int] NOT NULL,
	[Id_FechaAsignacion] [int] NOT NULL,
	[Id_FechaCierre] [int] NOT NULL,
	[Id_FechaCongelado] [int] NOT NULL,
	[Id_FechaDescongelado] [int] NOT NULL,
	[Id_Nivel] [int] NOT NULL,
	[Conteo] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[FactReclamos]  WITH CHECK ADD  CONSTRAINT [FK_FactReclamos_DimArea] FOREIGN KEY([Id_Area])
REFERENCES [dbo].[DimArea] ([Id_Area])
GO
ALTER TABLE [dbo].[FactReclamos] CHECK CONSTRAINT [FK_FactReclamos_DimArea]
GO
ALTER TABLE [dbo].[FactReclamos]  WITH CHECK ADD  CONSTRAINT [FK_FactReclamos_DimDetalleTipoSituacionReclamo] FOREIGN KEY([Id_DetalleTipoSituacionReclamo])
REFERENCES [dbo].[DimDetalleTipoSituacionReclamo] ([Id_DetalleTipoSituacionReclamo])
GO
ALTER TABLE [dbo].[FactReclamos] CHECK CONSTRAINT [FK_FactReclamos_DimDetalleTipoSituacionReclamo]
GO
ALTER TABLE [dbo].[FactReclamos]  WITH CHECK ADD  CONSTRAINT [FK_FactReclamos_DimFecha] FOREIGN KEY([Id_FechaReclamo])
REFERENCES [dbo].[DimFecha] ([IdFecha])
GO
ALTER TABLE [dbo].[FactReclamos] CHECK CONSTRAINT [FK_FactReclamos_DimFecha]
GO
ALTER TABLE [dbo].[FactReclamos]  WITH CHECK ADD  CONSTRAINT [FK_FactReclamos_DimMarca] FOREIGN KEY([Id_Marca])
REFERENCES [dbo].[DimMarca] ([Id_Marca])
GO
ALTER TABLE [dbo].[FactReclamos] CHECK CONSTRAINT [FK_FactReclamos_DimMarca]
GO
ALTER TABLE [dbo].[FactReclamos]  WITH CHECK ADD  CONSTRAINT [FK_FactReclamos_DimReclamo] FOREIGN KEY([Id_Reclamo])
REFERENCES [dbo].[DimReclamo] ([Id_Reclamo])
GO
ALTER TABLE [dbo].[FactReclamos] CHECK CONSTRAINT [FK_FactReclamos_DimReclamo]
GO
ALTER TABLE [dbo].[FactReclamos]  WITH CHECK ADD  CONSTRAINT [FK_FactReclamos_DimSeveridad] FOREIGN KEY([Id_Severidad])
REFERENCES [dbo].[DimSeveridad] ([Id_Severidad])
GO
ALTER TABLE [dbo].[FactReclamos] CHECK CONSTRAINT [FK_FactReclamos_DimSeveridad]
GO
ALTER TABLE [dbo].[FactReclamos]  WITH CHECK ADD  CONSTRAINT [FK_FactReclamos_DimSociedad] FOREIGN KEY([Id_Sociedad])
REFERENCES [dbo].[DimSociedad] ([Id_Sociedad])
GO
ALTER TABLE [dbo].[FactReclamos] CHECK CONSTRAINT [FK_FactReclamos_DimSociedad]
GO
ALTER TABLE [dbo].[FactReclamos]  WITH CHECK ADD  CONSTRAINT [FK_FactReclamos_DimSucursal] FOREIGN KEY([Id_Sucursal])
REFERENCES [dbo].[DimSucursal] ([Id_Sucursal])
GO
ALTER TABLE [dbo].[FactReclamos] CHECK CONSTRAINT [FK_FactReclamos_DimSucursal]
GO
ALTER TABLE [dbo].[FactReclamos]  WITH CHECK ADD  CONSTRAINT [FK_FactReclamos_DimTipoSituacionReclamo] FOREIGN KEY([Id_TipoSituacionReclamo])
REFERENCES [dbo].[DimTipoSituacionReclamo] ([Id_TipoSituacionReclamo])
GO
ALTER TABLE [dbo].[FactReclamos] CHECK CONSTRAINT [FK_FactReclamos_DimTipoSituacionReclamo]
GO
ALTER TABLE [dbo].[FactReclamos]  WITH CHECK ADD  CONSTRAINT [FK_FactReclamos_DimTransaccionOrigen] FOREIGN KEY([Id_TransaccionOrigen])
REFERENCES [dbo].[DimTransaccionOrigen] ([Id_TransaccionOrigen])
GO
ALTER TABLE [dbo].[FactReclamos] CHECK CONSTRAINT [FK_FactReclamos_DimTransaccionOrigen]
GO
ALTER TABLE [dbo].[FactReclamos]  WITH CHECK ADD  CONSTRAINT [FK_FactReclamos_DimVendedor] FOREIGN KEY([Id_Vendedor])
REFERENCES [dbo].[DimVendedor] ([Id_Vendedor])
GO
ALTER TABLE [dbo].[FactReclamos] CHECK CONSTRAINT [FK_FactReclamos_DimVendedor]
GO
/****** Object:  StoredProcedure [dbo].[spCargarDimFecha]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




--spCargarDimFecha '1999-01-02','2014-12-31', 'Nacimiento'
CREATE PROCEDURE [dbo].[spCargarDimFecha]
(
	 @FechaInicio DATETIME,
     @FechaFin DATETIME,
	 @strDimensionProcesamiento VARCHAR(50)
)
AS
BEGIN

        --Varibales de procesamiento
		DECLARE @FechaProcesamiento DATETIME;
		DECLARE @strQuery nvarchar(max);
		DECLARE @strParameters nvarchar(max);


		--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		--Validar si las fecha ya fueron ingresadas
		DECLARE @DimFechaInicio datetime;
		DECLARE @DimFechaFin datetime;
		SET @strParameters='@DimFechaInicio datetime OUTPUT,@DimFechaFin datetime OUTPUT';
		
		SET @strQuery='		SELECT @DimFechaInicio = Min([Fecha]),
								   @DimFechaFin = Max ([Fecha])
							FROM  [dbo].[DimFecha'+@strDimensionProcesamiento+']';
        
	    execute sp_executesql   @strQuery,
		                        @strParameters,
		                        @DimFechaInicio=@DimFechaInicio OUTPUT,
								@DimFechaFin=@DimFechaFin OUTPUT;


	   --Validar si es necesario agregar nuevos registros en la dimension de tiempo
	   if @FechaFin <= @DimFechaFin
	     BEGIN
				return;
		 END

        --Modificar el rango de fecha si es necesario cargar ingrementalmente
	    if @DimFechaFin is not null
		 BEGIN
			   SET @FechaInicio=CASE WHEN @FechaInicio<=@DimFechaFin
			                            THEN DATEADD(day,1,@DimFechaFin)
								ELSE @FechaInicio END;
		 END
		 
		--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		SET @FechaProcesamiento=@FechaInicio;


		SET @strQuery = 'INSERT INTO [dbo].[DimFecha'+@strDimensionProcesamiento+']
												   ([IdFecha'+@strDimensionProcesamiento+']
												   ,[Fecha]
												   ,[Anno]
												   ,[Mes]
												   ,[SemanaMes]
												   ,[SemanaAnno]
												   ,[DescripcionMes]
												   ,[DescripcionDia]
												   ,[Trimestre]
												   ,[Semestre]
												   ,[DiaSemana]
												   ,[DiaMes]
												   ,[DiaAnno]
												   ,[AnnoMes])
											 VALUES
												   (
												     @IdFecha ,
													 @FechaProcesamiento,
													 @Anno ,
													 @Mes ,
													 @SemanaMes ,
													 @SemanaAnno ,
													 @DescripcionMes ,
													 @DescripcionDia ,
													 @Trimestre ,
													 @Semestre ,
													 @DiaSemana ,
													 @DiaMes ,
													 @DiaAnno ,
													 @AnnoMes )';

          SET @strParameters=	'@IdFecha int,
								 @Anno int,
								 @Mes int,
								 @SemanaMes int,
								 @SemanaAnno int,
								 @DescripcionMes varchar(50),
								 @DescripcionDia varchar(50),
								 @Trimestre varchar(50),
								 @Semestre varchar(50),
								 @DiaSemana Varchar(50),
								 @DiaMes int,
								 @DiaAnno int,
								 @AnnoMes int,
								 @FechaProcesamiento DATETIME';

		--Variables desnormalizadas de dimension de tiempo
		DECLARE @IdFecha int;
		DECLARE @Anno int;
		DECLARE @Mes int;
		DECLARE @SemanaMes int;
		DECLARE @SemanaAnno int;
		DECLARE @DescripcionMes varchar(50);
		DECLARE @DescripcionDia varchar(50);
		DECLARE @Trimestre varchar(50);
		DECLARE @Semestre varchar(50);
		DECLARE @DiaSemana Varchar(50);
		DECLARE @DiaMes int;
		DECLARE @DiaAnno int;
		DECLARE @AnnoMes int;




		WHILE @FechaFin>=@FechaProcesamiento
		BEGIN
	
	
			SET @IdFecha =CONVERT(int,CONVERT(VARCHAR(10),@FechaProcesamiento,112));
			SET @Anno =YEAR(@FechaProcesamiento);
			SET @Mes=Month(@FechaProcesamiento);
			SET @SemanaMes=(DATEDIFF(week, DATEADD(MONTH, DATEDIFF(MONTH, 0, @FechaProcesamiento), 0), @FechaProcesamiento) +1) ;
			SET @SemanaAnno=datepart(week,@FechaProcesamiento);
			SET @DescripcionMes=CASE MONTH(@FechaProcesamiento)  
								   WHEN 1 THEN 'ENERO'
								   WHEN 2  THEN 'FEBRERO'
								   WHEN 3  THEN 'MARZO'
								   WHEN 4  THEN 'ABRIL'
								   WHEN 5  THEN 'MAYO'
								   WHEN 6  THEN 'JUNIO'
								   WHEN 7  THEN 'JULIO'
								   WHEN 8  THEN 'AGOSTO'
								   WHEN 9  THEN 'SEPTIEMBRE'
								   WHEN 10 THEN 'OCTUBRE'
								   WHEN 11 THEN 'NOVIEMBRE'
								   WHEN 12 THEN 'DICIEMBRE' END;
			SET @DescripcionDia=CASE datepart(weekday,@FechaProcesamiento)
								   WHEN 1 THEN 'DOMINGO'
								   WHEN 2 THEN 'LUNES'
								   WHEN 3 THEN 'MARTES'
								   WHEN 4 THEN 'MIERCOLES'
								   WHEN 5 THEN 'JUEVES'
								   WHEN 6 THEN 'VIERNES'
								   WHEN 7 THEN 'SABADO' END;
			SET @Trimestre=CASE DATEPART(quarter,@FechaProcesamiento)
								   WHEN 1 THEN CONVERT(VARCHAR(4),YEAR( @FechaProcesamiento)) + '-TRIMESTRE I'
								   WHEN 2 THEN CONVERT(VARCHAR(4),YEAR( @FechaProcesamiento)) + '-TRIMESTRE II'
								   WHEN 3 THEN CONVERT(VARCHAR(4),YEAR( @FechaProcesamiento)) + '-TRIMESTRE III'
								   WHEN 4 THEN CONVERT(VARCHAR(4),YEAR( @FechaProcesamiento)) + '-TRIMESTRE IV' END;
			SET @Semestre=CASE WHEN MONTH(@FechaProcesamiento)<=6 
								   THEN (CONVERT(VARCHAR(4),YEAR( @FechaProcesamiento)) + '-SEMESTRE I' )
								   ELSE (CONVERT(VARCHAR(4),YEAR( @FechaProcesamiento)) + '-SEMESTRE II' ) END;
			SET @DiaSemana = DATEPART(weekday,@FechaProcesamiento);
			SET @DiaMes = DAY(@FechaProcesamiento);
			SET @DiaAnno =DATEPART (dayofyear,@FechaProcesamiento);
			SET @AnnoMes =CONVERT(int,CONVERT(VARCHAR(6),@FechaProcesamiento,112));

		
			--realizar insert
			 execute sp_executesql @strQuery,
		                        @strParameters,
		                        @IdFecha=@IdFecha ,
								@FechaProcesamiento=@FechaProcesamiento,
								@Anno=@Anno,
								@Mes=@Mes,
								@SemanaMes=@SemanaMes ,
								@SemanaAnno=@SemanaAnno ,
								@DescripcionMes=@DescripcionMes ,
								@DescripcionDia= @DescripcionDia,
								@Trimestre =@Trimestre,
								@Semestre=@Semestre ,
								@DiaSemana=@DiaSemana ,
								@DiaMes=@DiaMes ,
								@DiaAnno=@DiaAnno ,
								@AnnoMes=@AnnoMes ;
												   

			--agregar un dia para continuar el procesamiento.
			SET @FechaProcesamiento= DATEADD(day,1,@FechaProcesamiento);
	     
		END




END






GO
/****** Object:  StoredProcedure [dbo].[spDefaultValue]    Script Date: 6/6/2014 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDefaultValue]
AS
BEGIN

--********************************************************************************
--********************************************************************************
	IF (SELECT COUNT(1) 
			FROM [dbo].[DimArea]
				WHERE [Id_Area]=-1)<=0
	BEGIN
		INSERT INTO [dbo].[DimArea]
			([Id_Area]
			,[DescripcionArea])
		VALUES
			(-1
			,'No Definido');
	END

--********************************************************************************
--********************************************************************************
	IF (SELECT COUNT(1) 
			FROM [dbo].[DimDetalleTipoSituacionReclamo]
				WHERE [Id_DetalleTipoSituacionReclamo]=-1)<=0
	BEGIN

		INSERT INTO [dbo].[DimDetalleTipoSituacionReclamo]
			([Id_DetalleTipoSituacionReclamo]
			,[DescripcionDetalleTipoSituacionReclamo])
		VALUES
			(-1
			,'No Definido');

	END


--********************************************************************************
--********************************************************************************
	IF (SELECT COUNT(1) 
			FROM [dbo].[DimFecha]
				WHERE [IdFecha]=19000101)<=0
	BEGIN

		INSERT INTO [dbo].[DimFecha]	
			([IdFecha]
			,[Fecha]
			,[Anno]
			,[Mes]
			,[SemanaMes]
			,[SemanaAnno]
			,[DescripcionMes]
			,[DescripcionDia]
			,[Trimestre]
			,[Semestre]
			,[DiaSemana]
			,[DiaMes]
			,[DiaAnno]
			,[AnnoMes])
		VALUES
			(19000101
			,'1900-01-01'
			,-1
			,-1
			,-1
			,-1
			,'No Definido'
			,'No Definido'
			,'No Definido'
			,'No Definido'
			,-1
			,-1
			,-1
			,-1);

	END


--********************************************************************************
--********************************************************************************
	IF (SELECT COUNT(1) 
			FROM [dbo].[DimMarca]
				WHERE [Id_Marca]=-1)<=0
	BEGIN
	
		INSERT INTO [dbo].[DimMarca]
			([Id_Marca]
			,[DescripcionMarca])
		VALUES
			(-1
			,'No Definido');
		   
	END


--********************************************************************************
--********************************************************************************
	IF (SELECT COUNT(1) 
			FROM  [dbo].[DimNivel]
				WHERE [Id_Nivel]=-1)<=0
	BEGIN

		INSERT INTO [dbo].[DimNivel]
			([Id_Nivel]
			,[Nivel])
		VALUES
			(-1
			,'N/D');
					   
	END

--********************************************************************************
--********************************************************************************
	IF (SELECT COUNT(1) 
			FROM  [dbo].[DimReclamo]
				WHERE [Id_Reclamo]=-1)<=0
	BEGIN

		INSERT INTO [dbo].[DimReclamo]
			([Id_Reclamo]
			,[EstadoReclamo]
			,[Origen]
			,[TipoCaso]
			,[DiasAntiguedad]
			,[Antiguedad]
			,[NumeroCaso]
			,[CodigoReclamo])
		VALUES
			(-1
			,'No Definido'
			,'No Definido'
			,'No Definido'
			,'No Definido'
			,'No Definido'
			,'No Definido'
			,'No Definido');

	END


--********************************************************************************
--********************************************************************************
	IF (SELECT COUNT(1) 
			FROM  [dbo].[DimSeveridad]
				WHERE [Id_Severidad]=-1)<=0
	BEGIN

		INSERT INTO [dbo].[DimSeveridad]
			([Id_Severidad]
			,[DescripcionSeveridad])
		VALUES
			(-1
			,'No Definido');
			   
	END


--********************************************************************************
--********************************************************************************
	IF (SELECT COUNT(1) 
			FROM  [dbo].[DimSociedad]
				WHERE [Id_Sociedad]=-1)<=0
	BEGIN

			INSERT INTO [dbo].[DimSociedad]
				([Id_Sociedad]
				,[CodigoSociedad]
				,[DescripcionSociedad]
				,[NombreCorto]
				,[Pais]
				,[CodigoPais])
			VALUES
				(-1
				,'N/D'
				,'No Definido'
				,'No Definido'
				,'No Definido'
				,'No Definido');
			   
	END


--********************************************************************************
--********************************************************************************
	IF (SELECT COUNT(1) 
			FROM  [dbo].[DimSucursal]
				WHERE [Id_Sucursal]=-1)<=0
	BEGIN

		INSERT INTO [dbo].[DimSucursal]
			([Id_Sucursal]
			,[Sucursal]
			,[SucursalPais]
			,[Pais])
		VALUES
			(-1
			,'No Definido'
			,'No Definido'
			,'No Definido');
			   
	END


--********************************************************************************
--********************************************************************************
	IF (SELECT COUNT(1) 
			FROM  [dbo].[DimTipoSituacionReclamo]
				WHERE [Id_TipoSituacionReclamo]=-1)<=0
	BEGIN
	
		INSERT INTO [dbo].[DimTipoSituacionReclamo]
			([Id_TipoSituacionReclamo]
			,[DescripcionTipoSituacionReclamo])
		VALUES
			(-1
			,'No Definido');

			   
	END


--********************************************************************************
--********************************************************************************
	IF (SELECT COUNT(1) 
			FROM  [dbo].[DimTransaccionOrigen]
				WHERE [Id_TransaccionOrigen]=-1)<=0
	BEGIN
	
		INSERT INTO [dbo].[DimTransaccionOrigen]
			([Id_TransaccionOrigen]
			,[DescripcionTransaccionOrigen])
		VALUES
			(-1
			,'No Definido');

		   
	END


--********************************************************************************
--********************************************************************************
	IF (SELECT COUNT(1) 
			FROM  [dbo].[DimVendedor]
				WHERE [Id_Vendedor]=-1)<=0
	BEGIN

		INSERT INTO [dbo].[DimVendedor]
			([Id_Vendedor]
			,[Vendedor]
			,[VendedorPais])
		VALUES
			(-1
			,'No Definido'
			,'No Definido');
	   
	END


END
GO
USE [master]
GO
ALTER DATABASE [BIDWGQCAL] SET  READ_WRITE 
GO
