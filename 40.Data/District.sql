declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'

insert into District
select 'Снятинський', 2, @LastUpdDt, @LastUpdUs
insert into District
select 'Косівський', 2, @LastUpdDt, @LastUpdUs
insert into District
select 'Кіцманський', 1, @LastUpdDt, @LastUpdUs
insert into District
select 'Вижницький', 1, @LastUpdDt, @LastUpdUs