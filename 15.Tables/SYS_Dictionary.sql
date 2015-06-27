IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[SYS_Dictionary]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [SYS_Dictionary]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [Name] [varchar](50) NOT NULL
  , [Description] [varchar](250) NOT NULL
  , [IsStatic] [bit] DEFAULT 0
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [varchar](50) NOT NULL	
  , CONSTRAINT [SYS_Dictionary_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO