IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Person_Nationality_NationalityId')
BEGIN
	ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_Nationality_NationalityId] FOREIGN KEY 
		(
			[NationalityId]
		) REFERENCES [Nationality] (
			[ID]
		)
END
GO
