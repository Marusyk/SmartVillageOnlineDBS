declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'

insert into CityType
select 'село', @LastUpdDt, @LastUpdUs
insert into CityType
select 'місто', @LastUpdDt, @LastUpdUs
insert into CityType
select 'селище', @LastUpdDt, @LastUpdUs
insert into CityType
select 'хутір', @LastUpdDt, @LastUpdUs