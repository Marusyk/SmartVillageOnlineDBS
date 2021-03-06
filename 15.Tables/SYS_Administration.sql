IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[SYS_Administration]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [SYS_Administration]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [Name] [nvarchar](50) NOT NULL
  , [Description] [nvarchar](250)
  , [DataBaseName] [nvarchar](100)
  , [SVVersion] [nvarchar](50) NOT NULL
  , [DBVersion] [nvarchar](50) NOT NULL
  , [DataBaseGUID] [uniqueidentifier]
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [nvarchar](50) NOT NULL
  , CONSTRAINT [SYS_Administration_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO

IF NOT EXISTS (select 1 from SYS_Administration)
BEGIN
	insert into SYS_Administration
	select 'SmartVillage-Online Administrator'
	,          'SmartVillage-Online, 2015'
	,          'SVData'
	,          '0.0.0.1'
	,          '0.0.0.1'
	,          NEWID()
	,          GETDATE()
	,          'SV'
END