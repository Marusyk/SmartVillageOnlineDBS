IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'Person_FKC_PassAuthority')
BEGIN
	ALTER TABLE [dbo].[Person] ADD CONSTRAINT [Person_FKC_PassAuthority] FOREIGN KEY 
		(
			[PassAuthorityId]
		) REFERENCES [PassAuthority] (
			[ID]
		)
END
GO
