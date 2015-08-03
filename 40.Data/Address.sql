declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
declare @CityID int, @StreetID int

SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

select @CityID = ID
from   City
where Name = N'Тростянець'

select @StreetID = ID
from   Street
where Name = N'Шевченка'

insert into Address(CityID, StreetID, PostCode, BuildNr, FlatNr, LastUpdDT, LastUpdUs)
select @CityID, @StreetID, NULL, N'51', NULL, @LastUpdDt, @LastUpdUs

select @CityID = ID
from   City
where Name = N'Чернівці'

select @StreetID = ID
from   Street
where Name = N'Головна'

insert into Address(CityID, StreetID, PostCode, BuildNr, FlatNr, LastUpdDT, LastUpdUs)
select @CityID, @StreetID, 12300, N'24a', N'400', @LastUpdDt, @LastUpdUs

select @CityID = ID
from   City
where Name = N'Снятин'

select @StreetID = ID
from   Street
where Name = N'Українська'

insert into Address(CityID, StreetID, PostCode, BuildNr, FlatNr, LastUpdDT, LastUpdUs)
select @CityID, @StreetID, NULL, N'15', N'4', @LastUpdDt, @LastUpdUs


