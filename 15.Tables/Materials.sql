IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[Materials]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [Materials]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [Name] [varchar](50) NOT NULL
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [varchar](50) NOT NULL
  , CONSTRAINT [SYS_Materials_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO