declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'

insert into Street
select 'Шевченка', 5, @LastUpdDt, @LastUpdUs
insert into Street
select 'Головна', 5, @LastUpdDt, @LastUpdUs
insert into Street
select 'Січових стрільців', 5, @LastUpdDt, @LastUpdUs
insert into Street
select 'Українська', 5, @LastUpdDt, @LastUpdUs
insert into Street
select 'Незалежності', 8, @LastUpdDt, @LastUpdUs