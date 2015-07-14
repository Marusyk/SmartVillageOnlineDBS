IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'Region_FKC_Country')
BEGIN
	ALTER TABLE [dbo].[Region] ADD CONSTRAINT [Region_FKC_Country] FOREIGN KEY 
		(
			[CountryID]
		) REFERENCES [Country] (
			[ID]
		)
END
GO
