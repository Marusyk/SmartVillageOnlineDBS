declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'

insert into CityType
select '����', @LastUpdDt, @LastUpdUs
insert into CityType
select '����', @LastUpdDt, @LastUpdUs
insert into CityType
select '������', @LastUpdDt, @LastUpdUs
insert into CityType
select '����', @LastUpdDt, @LastUpdUs