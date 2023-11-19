CREATE TABLE [dbo].[DimMesa]
(
    [SkTempo] INT NOT NULL,
	[SkMesa] INT NOT NULL PRIMARY KEY, 
    [Mesa] VARCHAR(50) NULL, 
    [Metadado] VARCHAR(250) NULL
)
