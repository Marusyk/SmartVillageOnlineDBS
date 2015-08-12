IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Person_PassAuthority_PassAuthorityId')
BEGIN
	ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_PassAuthority_PassAuthorityId] FOREIGN KEY 
		(
			[PassAuthorityId]
		) REFERENCES [PassAuthority] (
			[ID]
		)
END
GO
