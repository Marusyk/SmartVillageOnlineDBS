IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_People_Person_PersonID')
BEGIN
	ALTER TABLE [dbo].[People] ADD CONSTRAINT [FK_People_Person_PersonID] FOREIGN KEY 
		(
			[PersonID]
		) REFERENCES [Person] (
			[ID]
		)
END
GO
