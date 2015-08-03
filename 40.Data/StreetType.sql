declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

IF NOT EXISTS(select 1 from StreetType where Name = N'вулиця')
BEGIN
  insert into StreetType
  select N'вулиця'
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from StreetType where Name = N'урочище')
BEGIN
  insert into StreetType
  select N'урочище'
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from StreetType where Name = N'провулок')
BEGIN
  insert into StreetType
  select N'провулок'
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from StreetType where Name = N'проспект')
BEGIN
  insert into StreetType
  select N'проспект'
  ,         @LastUpdDt
  ,         @LastUpdUs
END
