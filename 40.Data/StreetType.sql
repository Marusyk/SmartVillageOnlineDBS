declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

insert into StreetType
select N'вулиц¤', @LastUpdDt, @LastUpdUs
insert into StreetType
select N'урочище', @LastUpdDt, @LastUpdUs
insert into StreetType
select N'провулок', @LastUpdDt, @LastUpdUs
insert into StreetType
select N'проспект', @LastUpdDt, @LastUpdUs
