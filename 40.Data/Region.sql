declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'

insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
select 'Чернівецька', 1, @LastUpdDt, @LastUpdUs
insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
select 'Івано-Франківська', 1, @LastUpdDt, @LastUpdUs
insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
select 'Київська', 1, @LastUpdDt, @LastUpdUs
insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
select 'Львівська', 1, @LastUpdDt, @LastUpdUs