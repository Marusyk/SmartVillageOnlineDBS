declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
declare @RegionID int, @DistrictID int, @CityTypeID int

SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

select @CityTypeID = ID
from   CityType
where Name = N'село'   

select @DistrictID = ID
,          @RegionID = RegionID
from   District
where Name = N'Снятинський' 

IF NOT EXISTS(select 1 from City where Name = N'Тростянець')
BEGIN
  insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
  select N'Тростянець'
  ,         @CityTypeID
  ,         @DistrictID
  ,         @RegionID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

select @CityTypeID = ID
from   CityType
where Name = N'місто'

select @RegionID = ID
from   Region
where Name = N'Івано-Франківська'

IF NOT EXISTS(select 1 from City where Name = N'Снятин')
BEGIN
  insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
  select N'Снятин'
  ,         @CityTypeID
  ,         NULL
  ,         @RegionID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

select @RegionID = ID
from   Region
where Name = N'Київська'

IF NOT EXISTS(select 1 from City where Name = N'Київ')
BEGIN
  insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
  select N'Київ'
  ,         @CityTypeID
  ,         NULL
  ,         @RegionID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

select @RegionID = ID
from   Region
where Name = N'Чернівецька'

IF NOT EXISTS(select 1 from City where Name = N'Чернівці')
BEGIN
  insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
  select N'Чернівці'
  ,         @CityTypeID
  ,         NULL
  ,         @RegionID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

select @CityTypeID = ID
from   CityType
where Name = N'селище'

select @DistrictID = ID
,          @RegionID = RegionID
from   District
where Name = N'Кіцманський' 

IF NOT EXISTS(select 1 from City where Name = N'Лужани')
BEGIN
  insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
  select N'Лужани'
  ,         @CityTypeID
  ,         @DistrictID
  ,         @RegionID
  ,         @LastUpdDt
  ,         @LastUpdUs
END