CREATE TABLE [dbo].[DimTransaccionOrigen](
	[Id_TransaccionOrigen] [int] NOT NULL CONSTRAINT [DF_DimTransaccionOrigen_Id_TransaccionOrigen]  DEFAULT (NEXT VALUE FOR [dbo].[Seq_Dim_TransaccionOrigen]),
	[DescripcionTransaccionOrigen] [varchar](60) NULL,
 CONSTRAINT [PK_DimOrigenTransaccion] PRIMARY KEY CLUSTERED 
(
	[Id_TransaccionOrigen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)
