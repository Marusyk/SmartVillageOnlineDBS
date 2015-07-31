for /R %%G in (*.sql) do sqlcmd /S MARUSYK\SQLEXPRESS /d SVData -E -i"%%G"
pause