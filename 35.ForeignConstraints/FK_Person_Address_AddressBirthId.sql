IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Person_Address_AddressBirthId')
BEGIN
	ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_Address_AddressBirthId] FOREIGN KEY 
		(
			[AddressBirthId]
		) REFERENCES [Address] (
			[ID]
		)
END
GO
