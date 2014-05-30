﻿CREATE TABLE [dbo].[DimMarca](
	[Id_Marca] [int] NOT NULL CONSTRAINT [DF_DIMMarca_Id_Marca]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_Marca]),
	[DescripcionMarca] [varchar](60) NULL,
 CONSTRAINT [PK_DIMMarca] PRIMARY KEY CLUSTERED 
(
	[Id_Marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)