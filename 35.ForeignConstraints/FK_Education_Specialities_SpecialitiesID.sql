IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Education_Specialities_SpecialitiesID')
BEGIN
	ALTER TABLE [dbo].[Education] ADD CONSTRAINT [FK_Education_Specialities_SpecialitiesID] FOREIGN KEY 
		(
			[SpecialitiesID]
		) REFERENCES [Specialities] (
			[ID]
		)
END
GO
