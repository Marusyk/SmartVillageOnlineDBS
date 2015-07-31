declare @LastUpdDT smalldatetime, @LastUpdUS nvarchar(50)
SET @LastUpdDT = GETDATE()
SET @LastUpdUS = @N'SV'

/* ========================= ADDRESS =======================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Address', N'������', 0, @LastUpdDT, @LastUpdUS)

/* ========================= ANIMALS ======================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Animals', N'�������', 0, @LastUpdDT, @LastUpdUS)

/* ========================= CITY ==========================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('City', N'������� ������', 0, @LastUpdDT, @LastUpdUS)

/* ========================= CITY TYPE =====================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('CityType', N'���� ��������� ������', 1, @LastUpdDT, @LastUpdUS)

/* ========================= COUNTRY ======================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Country', N'�����', 0, @LastUpdDT, @LastUpdUS)

/* ========================= DISTRICT ======================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('District', N'������', 0, @LastUpdDT, @LastUpdUS)

/* ========================= DOCUMENT TYPE =================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('DocumentType', N'���� ���������', 0, @LastUpdDT, @LastUpdUS)

/* ========================= FAMILY RELATIONS ==============================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('FamilyRelations', N'������ ��������', 0, @LastUpdDT, @LastUpdUS)

/* ========================= FAMILY STATUS =================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('FamilyStatus', N'ѳ������ ����', 0, @LastUpdDT, @LastUpdUS)

/* ========================= MATERIALS =====================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Materials', N'��������', 0, @LastUpdDT, @LastUpdUS)

/* ========================= NATIONALITY ===================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Nationality', N'�������������', 0, @LastUpdDT, @LastUpdUS)

/* ========================= PASSAUTHORITY =================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('PassAuthority', N'�����, ���� ����� ��������', 0, @LastUpdDT, @LastUpdUS)

/* ========================= PENSION TYPE ==================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('PensionType', N'���� �����', 0, @LastUpdDT, @LastUpdUS)

/* ========================= POSITION ======================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Position', N'������', 0, @LastUpdDT, @LastUpdUS)

/* ========================= REGION ========================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Region', N'������', 0, @LastUpdDT, @LastUpdUS)

/* ========================= STREET ========================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('Street', N'������', 1, @LastUpdDT, @LastUpdUS)

/* ========================= STREET TYPE ===================================*/
insert into SYS_Dictionary (Name, Description, IsStatic, LastUpdDT, LastUpdUS) 
values ('StreetType', N'���� ������', 1, @LastUpdDT, @LastUpdUS)