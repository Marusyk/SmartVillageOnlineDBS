declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
select N'Тростянець', 1, 1, 2, @LastUpdDt, @LastUpdUs
insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
select N'Чернівці', 2, NULL, 1, @LastUpdDt, @LastUpdUs
insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
select N'Снятин', 2, 1, 2, @LastUpdDt, @LastUpdUs
insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
select N'Київ', 2, NULL, 3, @LastUpdDt, @LastUpdUs
insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
select N'Лужани', 3, 3, 1, @LastUpdDt, @LastUpdUs