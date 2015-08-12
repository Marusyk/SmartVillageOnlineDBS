IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Person_Address_AddressLiveId')
BEGIN
	ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_Address_AddressLiveId] FOREIGN KEY 
		(
			[AddressLiveId]
		) REFERENCES [Address] (
			[ID]
		)
END
GO
