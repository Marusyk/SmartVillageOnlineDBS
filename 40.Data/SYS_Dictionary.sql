declare @LastUpdDT smalldatetime, @LastUpdUS nvarchar(50)
SET @LastUpdDT = GETDATE()
SET @LastUpdUS = N'SV'

delete from SYS_Dictionary

/* ========================= ADDRESS =======================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Address', N'Адреси', 0, @LastUpdDT, @LastUpdUS)

/* ========================= ANIMALS ======================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Animals', N'Тварини', 0, @LastUpdDT, @LastUpdUS)

/* ========================= CITY ==========================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('City', N'Населені пункти', 0, @LastUpdDT, @LastUpdUS)

/* ========================= CITY TYPE =====================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('CityType', N'Типи населених пунктів', 1, @LastUpdDT, @LastUpdUS)

/* ========================= COUNTRY ======================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Country', N'Країни', 0, @LastUpdDT, @LastUpdUS)

/* ========================= DISTRICT ======================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('District', N'Райони', 0, @LastUpdDT, @LastUpdUS)

/* ========================= DOCUMENT TYPE =================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('DocumentType', N'Типи документів', 0, @LastUpdDT, @LastUpdUS)

/* ========================= FAMILY RELATIONS ==============================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('FamilyRelations', N'Родинні відносини', 0, @LastUpdDT, @LastUpdUS)

/* ========================= FAMILY STATUS =================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('FamilyStatus', N'Сімейний стан', 0, @LastUpdDT, @LastUpdUS)

/* ========================= MATERIALS =====================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Materials', N'Матеріали', 0, @LastUpdDT, @LastUpdUS)

/* ========================= NATIONALITY ===================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Nationality', N'Національності', 0, @LastUpdDT, @LastUpdUS)

/* ========================= PASSAUTHORITY =================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('PassAuthority', N'Орган, який видав документ', 0, @LastUpdDT, @LastUpdUS)

/* ========================= PENSION TYPE ==================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('PensionType', N'Види пенсій', 0, @LastUpdDT, @LastUpdUS)

/* ========================= POSITION ======================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Position', N'Посади', 0, @LastUpdDT, @LastUpdUS)

/* ========================= REGION ========================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Region', N'Області', 0, @LastUpdDT, @LastUpdUS)

/* ========================= STREET ========================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Street', N'Вулиці', 0, @LastUpdDT, @LastUpdUS)

/* ========================= STREET TYPE ===================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('StreetType', N'Типи вулиць', 1, @LastUpdDT, @LastUpdUS)

/* ========================= PERSON ===================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Person', N'Контрагенти', 0, @LastUpdDT, @LastUpdUS)