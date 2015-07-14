declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'

insert into City
select 'Тростянець', 5, 1, 2, @LastUpdDt, @LastUpdUs
insert into City
select 'Чернівці', 6, NULL, 1, @LastUpdDt, @LastUpdUs
insert into City
select 'Снятин', 6, 1, 2, @LastUpdDt, @LastUpdUs
insert into City
select 'Київ', 6, NULL, 3, @LastUpdDt, @LastUpdUs
insert into City
select 'Лужани', 7, 3, 1, @LastUpdDt, @LastUpdUs