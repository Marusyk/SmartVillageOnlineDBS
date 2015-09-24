IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Education_EducationDegree_EducationDegreeID')
BEGIN
	ALTER TABLE [dbo].[Education] ADD CONSTRAINT [FK_Education_EducationDegree_EducationDegreeID] FOREIGN KEY 
		(
			[EducationDegreeID]
		) REFERENCES [EducationDegree] (
			[ID]
		)
END
GO
