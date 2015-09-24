IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Institution_Person_PersonID')
BEGIN
	ALTER TABLE [dbo].[PersonDocuments] ADD CONSTRAINT [FK_Institution_Person_PersonID] FOREIGN KEY 
		(
			[PersonID]
		) REFERENCES [Person] (
			[ID]
		)
END
GO
