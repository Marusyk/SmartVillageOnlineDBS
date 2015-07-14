IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'Address_FKC_Street')
BEGIN
	ALTER TABLE [dbo].[Address] ADD CONSTRAINT [Address_FKC_Street] FOREIGN KEY 
		(
			[StreetID]
		) REFERENCES [Street] (
			[ID]
		)
END
GO
