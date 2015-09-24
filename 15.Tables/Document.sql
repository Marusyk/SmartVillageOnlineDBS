IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[Document]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [Document]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [DocumentTypeID] [int] NULL
  , [Name] [nvarchar](100) NOT NULL
  , [PassAuthorityID] [int] NULL
  , [Number] [nvarchar](20)
  , [Code] [nvarchar](10)
  , [State] [bit] NOT NULL DEFAULT (0)
  , [DateReg] [smalldatetime] NOT NULL
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [nvarchar](50) NOT NULL
  , CONSTRAINT [SYS_Document_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO