CREATE TABLE [dbo].[DimSeveridad](
	[Id_Severidad] [int] NOT NULL CONSTRAINT [DF_DIMSeveridad_Id_Severidad]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Severidad]),
	[DescripcionSeveridad] [varchar](60) NULL,
 CONSTRAINT [PK_DIMSeveridad] PRIMARY KEY CLUSTERED 
(
	[Id_Severidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) 