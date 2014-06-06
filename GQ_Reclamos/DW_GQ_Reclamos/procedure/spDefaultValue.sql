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
			,'No Definido'
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


