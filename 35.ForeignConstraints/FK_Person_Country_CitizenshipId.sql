IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Person_Country_CitizenshipId')
BEGIN
	ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_Country_CitizenshipId] FOREIGN KEY 
		(
			[CitizenshipId]
		) REFERENCES [Country] (
			[ID]
		)
END
GO
