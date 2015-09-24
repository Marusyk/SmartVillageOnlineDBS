IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[Education]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [Education]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [PersonID] [int] NOT NULL
  , [InstitutionID] [int] NOT NULL
  , [SpecialitiesID] [int] NULL
  , [EducationDegreeID] [int] NULL
  , [StartYear] [int] NULL
  , [EndYear] [int] NULL  
  , [DocumentID] [int] NULL
  , [Description] [nvarchar](500) 
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [nvarchar](50) NOT NULL
  , CONSTRAINT [SYS_Education_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO