IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Person_FamilyStatus_FamilyStatusId')
BEGIN
	ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_FamilyStatus_FamilyStatusId] FOREIGN KEY 
		(
			[FamilyStatusId]
		) REFERENCES [FamilyStatus] (
			[ID]
		)
END
GO
