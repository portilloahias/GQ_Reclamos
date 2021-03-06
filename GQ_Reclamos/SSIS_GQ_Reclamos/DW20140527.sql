USE [master]
GO
/****** Object:  Database [BIDWGQCAL]    Script Date: 5/27/2014 3:31:58 PM ******/
CREATE DATABASE [BIDWGQCAL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BIDWGQCAL', FILENAME = N'C:\Devices_cal\BIDWGQCAL.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BIDWGQCAL_log', FILENAME = N'C:\Devices_cal\BIDWGQCAL_log.ldf' , SIZE = 7616KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  User [sapbi]    Script Date: 5/27/2014 3:31:58 PM ******/
CREATE USER [sapbi] FOR LOGIN [sapbi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [GQSV\sapbi]    Script Date: 5/27/2014 3:31:58 PM ******/
CREATE USER [GQSV\sapbi] FOR LOGIN [GQSV\sapbi] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [sapbi]
GO
ALTER ROLE [db_owner] ADD MEMBER [GQSV\sapbi]
GO
USE [BIDWGQCAL]
GO
/****** Object:  Sequence [dbo].[Seq_Dim_Area]    Script Date: 5/27/2014 3:31:58 PM ******/
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
/****** Object:  Sequence [dbo].[Seq_Dim_Detalle_Tipo_Situacion_Reclamo]    Script Date: 5/27/2014 3:31:58 PM ******/
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
/****** Object:  Sequence [dbo].[Seq_Dim_Marca]    Script Date: 5/27/2014 3:31:58 PM ******/
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
/****** Object:  Sequence [dbo].[Seq_Dim_Reclamo]    Script Date: 5/27/2014 3:31:58 PM ******/
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
/****** Object:  Sequence [dbo].[Seq_Dim_Severidad]    Script Date: 5/27/2014 3:31:58 PM ******/
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
/****** Object:  Sequence [dbo].[Seq_Dim_Sociedad]    Script Date: 5/27/2014 3:31:58 PM ******/
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
/****** Object:  Sequence [dbo].[Seq_Dim_Sucursal]    Script Date: 5/27/2014 3:31:58 PM ******/
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
/****** Object:  Sequence [dbo].[Seq_Dim_Tipo_Situacion_Reclamo]    Script Date: 5/27/2014 3:31:58 PM ******/
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
/****** Object:  Sequence [dbo].[Seq_Dim_TransaccionOrigen]    Script Date: 5/27/2014 3:31:58 PM ******/
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
/****** Object:  Sequence [dbo].[Seq_Dim_Vendedor]    Script Date: 5/27/2014 3:31:58 PM ******/
CREATE SEQUENCE [dbo].[Seq_Dim_Vendedor] 
 AS [int]
 START WITH 0
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [dbo].[DimArea]    Script Date: 5/27/2014 3:31:59 PM ******/
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
/****** Object:  Table [dbo].[DimDetalleTipoSituacionReclamo]    Script Date: 5/27/2014 3:31:59 PM ******/
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
/****** Object:  Table [dbo].[DimMarca]    Script Date: 5/27/2014 3:31:59 PM ******/
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
/****** Object:  Table [dbo].[DimReclamo]    Script Date: 5/27/2014 3:31:59 PM ******/
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
 CONSTRAINT [PK_DimReclamo] PRIMARY KEY CLUSTERED 
(
	[Id_Reclamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimSeveridad]    Script Date: 5/27/2014 3:31:59 PM ******/
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
/****** Object:  Table [dbo].[DimSociedad]    Script Date: 5/27/2014 3:31:59 PM ******/
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
/****** Object:  Table [dbo].[DimSucursal]    Script Date: 5/27/2014 3:31:59 PM ******/
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
/****** Object:  Table [dbo].[DimTipoSituacionReclamo]    Script Date: 5/27/2014 3:31:59 PM ******/
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
/****** Object:  Table [dbo].[DimTransaccionOrigen]    Script Date: 5/27/2014 3:31:59 PM ******/
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
/****** Object:  Table [dbo].[DimVendedor]    Script Date: 5/27/2014 3:31:59 PM ******/
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
USE [master]
GO
ALTER DATABASE [BIDWGQCAL] SET  READ_WRITE 
GO
