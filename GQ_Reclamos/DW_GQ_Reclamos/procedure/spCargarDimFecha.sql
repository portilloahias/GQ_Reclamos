CREATE  PROCEDURE [dbo].[spCargarDimFecha]
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





