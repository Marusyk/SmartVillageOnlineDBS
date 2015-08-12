rem @echo off
cls

set /P PARAM_VALUE=Remove all objects from the database (Y/N)?  

cd 10.PreScripts

if /I "%PARAM_VALUE%"=="y" goto CleanUpObjects
if /I "%PARAM_VALUE%"=="n" goto CleanUpData
goto scripts

:CleanUpObjects
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "31.07.2015 - RM - CleanUpObjects.sql"
goto scripts
:CleanUpData
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "30.07.2015 - RM - CleanUpData.sql"
goto scripts

:scripts
cd ../15.Tables
for %%G in (*.sql) do sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "%%G"

cd ../20.Indexes
for %%G in (*.sql) do sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "%%G"

cd ../35.ForeignConstraints
for %%G in (*.sql) do sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "%%G"

cd ../45.Views
for %%G in (*.sql) do sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "%%G"

cd ../40.Data
rem In order dependencies
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "SYS_Dictionary.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "Animals.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "Catalog.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "DocumentType.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "FamilyRelations.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "FamilyStatus.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "Materials.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "Nationality.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "Country.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "Region.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "District.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "CityType.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "StreetType.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "City.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "Street.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "Address.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "House.sql"
sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "Person.sql"

cd..
pause