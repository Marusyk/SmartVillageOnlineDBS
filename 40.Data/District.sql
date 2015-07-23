declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'

insert into District(Name, RegionID, LastUpdDT, LastUpdUS)
select 'Снятинський', 2, @LastUpdDt, @LastUpdUs
insert into District(Name, RegionID, LastUpdDT, LastUpdUS)
select 'Косівський', 2, @LastUpdDt, @LastUpdUs
insert into District(Name, RegionID, LastUpdDT, LastUpdUS)
select 'Кіцманський', 1, @LastUpdDt, @LastUpdUs
insert into District(Name, RegionID, LastUpdDT, LastUpdUS)
select 'Вижницький', 1, @LastUpdDt, @LastUpdUs