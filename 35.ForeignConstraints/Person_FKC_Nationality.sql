IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'Person_FKC_Nationality')
BEGIN
	ALTER TABLE [dbo].[Person] ADD CONSTRAINT [Person_FKC_Nationality] FOREIGN KEY 
		(
			[NationalityId]
		) REFERENCES [Nationality] (
			[ID]
		)
END
GO
