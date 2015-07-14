IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'City_FKC_District')
BEGIN
	ALTER TABLE [dbo].[City] ADD CONSTRAINT [City_FKC_District] FOREIGN KEY 
		(
			[DistrictID]
		) REFERENCES [District] (
			[ID]
		)
END
GO
