declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'

insert into StreetType
select 'вулиц€', @LastUpdDt, @LastUpdUs
insert into StreetType
select 'урочище', @LastUpdDt, @LastUpdUs
insert into StreetType
select 'провулок', @LastUpdDt, @LastUpdUs
insert into StreetType
select 'проспект', @LastUpdDt, @LastUpdUs
