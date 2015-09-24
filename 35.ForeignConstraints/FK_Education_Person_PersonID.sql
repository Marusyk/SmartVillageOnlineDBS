IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Education_Person_PersonID')
BEGIN
	ALTER TABLE [dbo].Education ADD CONSTRAINT [FK_Education_Person_PersonID] FOREIGN KEY 
		(
			[PersonID]
		) REFERENCES [Person] (
			[ID]
		)
END
GO
