declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
select N'Чернівецька', 1, @LastUpdDt, @LastUpdUs
insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
select N'Івано-Франківська', 1, @LastUpdDt, @LastUpdUs
insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
select N'Київська', 1, @LastUpdDt, @LastUpdUs
insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
select N'Львівська', 1, @LastUpdDt, @LastUpdUs