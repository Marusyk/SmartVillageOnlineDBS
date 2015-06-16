IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[Country]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	CREATE TABLE [Country]
	(	[CountryID] [int] IDENTITY(1,1) NOT NULL
	,	[Name] [varchar](50) NOT NULL
	, CONSTRAINT [SYS_Country_PKY] PRIMARY KEY CLUSTERED 
		  (
			  [CountryID] ASC
		  ) WITH  FILLFACTOR = 95  ON [PRIMARY]
	)   ON [PRIMARY]
END
GO        