IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Region_Country_CountryID')
BEGIN
	ALTER TABLE [dbo].[Region] ADD CONSTRAINT [FK_Region_Country_CountryID] FOREIGN KEY 
		(
			[CountryID]
		) REFERENCES [Country] (
			[ID]
		)
END
GO
