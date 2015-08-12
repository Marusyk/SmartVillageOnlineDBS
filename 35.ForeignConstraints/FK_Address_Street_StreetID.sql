IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Address_Street_StreetID')
BEGIN
	ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FK_Address_Street_StreetID] FOREIGN KEY 
		(
			[StreetID]
		) REFERENCES [Street] (
			[ID]
		)
END
GO
