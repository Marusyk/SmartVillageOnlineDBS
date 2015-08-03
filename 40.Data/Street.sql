declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
declare @StreetTypeID int

SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

select @StreetTypeID = ID
from   Region
where Name = N'вулиця'

IF NOT EXISTS(select 1 from Street where Name = N'Шевченка')
BEGIN
  insert into Street
  select N'Шевченка'
  ,         @StreetTypeID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Street where Name = N'Головна')
BEGIN
  insert into Street
  select N'Головна'
  ,         @StreetTypeID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Street where Name = N'Січових стрільців')
BEGIN
  insert into Street
  select N'Січових стрільців'
  ,         @StreetTypeID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Street where Name = N'Українська')
BEGIN
  insert into Street
  select N'Українська'
  ,         @StreetTypeID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

select @StreetTypeID = ID
from   Region
where Name = N'проспект'

IF NOT EXISTS(select 1 from Street where Name = N'Незалежності')
BEGIN
  insert into Street
  select N'Незалежності'
  ,         @StreetTypeID
  ,         @LastUpdDt
  ,         @LastUpdUs
END