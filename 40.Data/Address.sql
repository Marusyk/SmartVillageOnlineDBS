declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'


insert into Address(CityID, StreetID, PostCode, BuildNr, FlatNr, LastUpdDT, LastUpdUs)
select 1, 1, NULL, N'51', NULL, @LastUpdDt, @LastUpdUs
insert into Address(CityID, StreetID, PostCode, BuildNr, FlatNr, LastUpdDT, LastUpdUs)
select 2, 2, 12300, N'24a', N'400', @LastUpdDt, @LastUpdUs
insert into Address(CityID, StreetID, PostCode, BuildNr, FlatNr, LastUpdDT, LastUpdUs)
select 5, 4, NULL, N'15', N'4', @LastUpdDt, @LastUpdUs


