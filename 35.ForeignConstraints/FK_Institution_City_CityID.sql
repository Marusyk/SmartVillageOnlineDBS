IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Institution_City_CityID')
BEGIN
	ALTER TABLE [dbo].[Institution] ADD CONSTRAINT [FK_Institution_City_CityID] FOREIGN KEY 
		(
			[CityID]
		) REFERENCES [City] (
			[ID]
		)
END
GO
