IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[House]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [House]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [HouseNr] [nvarchar](10) NOT NULL
  , [KadastrNr] [nvarchar](10)
  , [BuildNr] [nvarchar](10) NOT NULL
  , [AddressID] [int] NOT NULL
  , [PhoneNr] [nvarchar](12) NULL
  , [PhoneCode] [nvarchar](5) NULL
  , [FaxNr] [nvarchar](12) NULL
  , [Year] [int] NULL
  , [Code] [nvarchar](50) NULL
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [nvarchar](50) NOT NULL	
  , CONSTRAINT [SYS_House_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO