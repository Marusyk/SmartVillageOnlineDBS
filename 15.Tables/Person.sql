IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[Person]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [Person]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [FirstName] [nvarchar](60) NOT NULL
  , [Name] [nvarchar](60) NOT NULL
  , [LastName] [nvarchar](60) NOT NULL
  , [DateBirth] [date] NOT NULL
  , [Sex] [bit] NOT NULL
  , [IsResident] [bit] NOT NULL DEFAULT (1)
  , [AddressBirthId] [int] NULL
  , [AddressLiveId] [int] NULL
  , [NationalityId] [int] NULL
  , [IdentificationCode] [nvarchar](10) NULL
  , [PassSeria] [nvarchar](5) NULL
  , [PassNr] [int] NULL
  , [PassDate] [date] NULL
  , [PassAuthorityId] [int] NULL
  , [FamilyStatusId] [int] NULL
  , [CitizenshipId] [int] NULL
  , [CatalogId] [int] NOT NULL
  , [IsSojourn] [bit] NOT NULL DEFAULT (0)
  , [Photo] [binary]
  , [PadFirstName] [nvarchar](60) NULL
  , [PadName] [nvarchar](60) NULL
  , [PadLastName] [nvarchar](60) NULL
  , [DatFirstName] [nvarchar](60) NULL
  , [DatName] [nvarchar](60) NULL
  , [DatLastName] [nvarchar](60) NULL
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [nvarchar](50) NOT NULL	
  , CONSTRAINT [SYS_Person_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO