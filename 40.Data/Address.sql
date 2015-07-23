declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'


insert into Address(CityID, StreetID, PostCode, BuildNr, FlatNr, LastUpdDT, LastUpdUs)
select 1, 1, NULL, '51', NULL, @LastUpdDt, @LastUpdUs
insert into Address(CityID, StreetID, PostCode, BuildNr, FlatNr, LastUpdDT, LastUpdUs)
select 2, 2, 12300, '24a', '400', @LastUpdDt, @LastUpdUs
insert into Address(CityID, StreetID, PostCode, BuildNr, FlatNr, LastUpdDT, LastUpdUs)
select 5, 4, NULL, '15', '4', @LastUpdDt, @LastUpdUs