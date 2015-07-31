/*
 30.07.2015 - RM - CleanUpData
 Author:  Roman Marusyk

01 30.07.2015  RM Init
02 31.07.2015  RM Improved  

 Description:
Script to clean up all data
*/

EXEC sp_MSForEachTable 'DISABLE TRIGGER ALL ON ?'
GO
EXEC sp_MSForEachTable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL'
GO
EXEC sp_MSForEachTable 'DELETE FROM ?'
GO
EXEC sp_MSForEachTable 'ALTER TABLE ? CHECK CONSTRAINT ALL'
GO
EXEC sp_MSForEachTable 'ENABLE TRIGGER ALL ON ?'
GO

/*   Reset identity field  */

declare @TableName varchar(100)

declare cur_Cursor CURSOR STATIC
FOR 

  select  TABLE_NAME 
  from    information_schema.tables
  where   TABLE_TYPE = 'BASE TABLE'

OPEN  cur_Cursor
FETCH NEXT FROM cur_Cursor into @TableName
WHILE @@FETCH_STATUS = 0
BEGIN

  IF LEFT(@TableName, 1) != '_'  -- except __MigrationHistory
    DBCC CHECKIDENT(@TableName, RESEED, 0)

  FETCH NEXT FROM cur_Cursor into @TableName

END
CLOSE cur_Cursor
DEALLOCATE cur_Cursor