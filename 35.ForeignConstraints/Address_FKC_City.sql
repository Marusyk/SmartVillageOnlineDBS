IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'Address_FKC_City')
BEGIN
	ALTER TABLE [dbo].[Address] ADD CONSTRAINT [Address_FKC_City] FOREIGN KEY 
		(
			[CityID]
		) REFERENCES [City] (
			[ID]
		)
END
GO
