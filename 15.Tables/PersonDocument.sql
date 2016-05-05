IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[PersonDocument]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [PersonDocument]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [PersonID] [int] NOT NULL
  , [DocumentID] [int] NOT NULL
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [nvarchar](50) NOT NULL
  , CONSTRAINT [SYS_PersonDocument_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO