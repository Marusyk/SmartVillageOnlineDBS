declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

insert into Street(Name, StreetTypeID, LastUpdDT, LastUpdUs)
select N'Шевченка', 1, @LastUpdDt, @LastUpdUs
insert into Street(Name, StreetTypeID, LastUpdDT, LastUpdUs)
select N'Головна', 1, @LastUpdDt, @LastUpdUs
insert into Street(Name, StreetTypeID, LastUpdDT, LastUpdUs)
select N'Січових стрільців', 1, @LastUpdDt, @LastUpdUs
insert into Street(Name, StreetTypeID, LastUpdDT, LastUpdUs)
select N'Українська', 1, @LastUpdDt, @LastUpdUs
insert into Street(Name, StreetTypeID, LastUpdDT, LastUpdUs)
select N'Незалежності', 4, @LastUpdDt, @LastUpdUs