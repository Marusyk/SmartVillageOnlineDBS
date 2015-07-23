declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'

insert into Street(Name, StreetTypeID, LastUpdDT, LastUpdUs)
select 'Шевченка', 5, @LastUpdDt, @LastUpdUs
insert into Street(Name, StreetTypeID, LastUpdDT, LastUpdUs)
select 'Головна', 5, @LastUpdDt, @LastUpdUs
insert into Street(Name, StreetTypeID, LastUpdDT, LastUpdUs)
select 'Січових стрільців', 5, @LastUpdDt, @LastUpdUs
insert into Street(Name, StreetTypeID, LastUpdDT, LastUpdUs)
select 'Українська', 5, @LastUpdDt, @LastUpdUs
insert into Street(Name, StreetTypeID, LastUpdDT, LastUpdUs)
select 'Незалежності', 8, @LastUpdDt, @LastUpdUs