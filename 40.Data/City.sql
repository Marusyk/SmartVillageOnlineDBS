declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'

insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
select 'Тростянець', 5, 1, 2, @LastUpdDt, @LastUpdUs
insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
select 'Чернівці', 6, NULL, 1, @LastUpdDt, @LastUpdUs
insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
select 'Снятин', 6, 1, 2, @LastUpdDt, @LastUpdUs
insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
select 'Київ', 6, NULL, 3, @LastUpdDt, @LastUpdUs
insert into City(Name, CityTypeID, DistrictID, RegionID, LastUpdDT, LastUpdUS)
select 'Лужани', 7, 3, 1, @LastUpdDt, @LastUpdUs