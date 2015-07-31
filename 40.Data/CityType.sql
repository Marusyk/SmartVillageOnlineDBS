declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

insert into CityType
select N'село', @LastUpdDt, @LastUpdUs
insert into CityType
select N'місто', @LastUpdDt, @LastUpdUs
insert into CityType
select N'селище', @LastUpdDt, @LastUpdUs
insert into CityType
select N'хутір', @LastUpdDt, @LastUpdUs