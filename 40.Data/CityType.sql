declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

insert into CityType
select N'����', @LastUpdDt, @LastUpdUs
insert into CityType
select N'����', @LastUpdDt, @LastUpdUs
insert into CityType
select N'������', @LastUpdDt, @LastUpdUs
insert into CityType
select N'����', @LastUpdDt, @LastUpdUs