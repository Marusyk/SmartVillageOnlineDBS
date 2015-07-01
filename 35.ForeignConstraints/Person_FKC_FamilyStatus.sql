IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'Person_FKC_FamilyStatus')
BEGIN
	ALTER TABLE [dbo].[Person] ADD CONSTRAINT [Person_FKC_FamilyStatus] FOREIGN KEY 
		(
			[FamilyStatusId]
		) REFERENCES [FamilyStatus] (
			[ID]
		)
END
GO
