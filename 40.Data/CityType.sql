declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

IF NOT EXISTS(select 1 from CityType where Name = N'село')
BEGIN
  insert into CityType
  select N'село'
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from CityType where Name = N'місто')
BEGIN
  insert into CityType
  select N'місто'
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from CityType where Name = N'селище')
BEGIN
  insert into CityType
  select N'селище'
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from CityType where Name = N'хутір')
BEGIN
  insert into CityType
  select N'хутір'
  ,         @LastUpdDt
  ,         @LastUpdUs
END