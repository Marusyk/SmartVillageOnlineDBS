IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_House_Address_AddressID')
BEGIN
	ALTER TABLE [dbo].[House] ADD CONSTRAINT [FK_House_Address_AddressID] FOREIGN KEY 
		(
			[AddressID]
		) REFERENCES [Address] (
			[ID]
		)
END
GO
