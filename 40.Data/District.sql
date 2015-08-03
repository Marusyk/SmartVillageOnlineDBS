declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
declare @RegionID int

SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

select @RegionID = ID
from   Region
where Name = N'Івано-Франківська'

IF NOT EXISTS(select 1 from District where Name = N'Снятинський')
BEGIN
  insert into District(Name, RegionID, LastUpdDT, LastUpdUS)
  select N'Снятинський'
  ,         @RegionID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from District where Name = N'Косівський')
BEGIN
  insert into District(Name, RegionID, LastUpdDT, LastUpdUS)
  select N'Косівський'
  ,         @RegionID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

select @RegionID = ID
from   Region
where Name = N'Чернівецька'

IF NOT EXISTS(select 1 from District where Name = N'Кіцманський')
BEGIN
  insert into District(Name, RegionID, LastUpdDT, LastUpdUS)
  select N'Кіцманський'
  ,         @RegionID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from District where Name = N'Вижницький')
BEGIN
  insert into District(Name, RegionID, LastUpdDT, LastUpdUS)
  select N'Вижницький'
  ,         @RegionID
  ,         @LastUpdDt
  ,         @LastUpdUs
END