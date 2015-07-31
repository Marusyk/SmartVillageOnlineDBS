cd 10.PreScripts
for %%G in (*.sql) do sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "%%G"

cd ../15.Tables
for %%G in (*.sql) do sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "%%G"

cd ../20.Indexes
for %%G in (*.sql) do sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "%%G"

cd ../35.ForeignConstraints
for %%G in (*.sql) do sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "%%G"

cd ../40.Data
for %%G in (*.sql) do sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "%%G"

cd ../45.Views
for %%G in (*.sql) do sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i "%%G"

pause