IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_People_FamilyRelations_FamilyRelationId')
BEGIN
	ALTER TABLE [dbo].[People] ADD CONSTRAINT [FK_People_FamilyRelations_FamilyRelationId] FOREIGN KEY 
		(
			[FamilyRelationID]
		) REFERENCES [FamilyRelations] (
			[ID]
		)
END
GO
