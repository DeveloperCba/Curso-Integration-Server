CREATE TABLE [dbo].[DimEstado]
(
	[SkEstado] INT NOT NULL PRIMARY KEY, 
    [SkTempo] INT NULL, 
    [Estado] VARCHAR(50) NULL, 
    [Uf] VARCHAR(20) NULL, 
    [Latitude] FLOAT NULL, 
    [Longitude] FLOAT NULL, 
    [Metadado] VARCHAR(150) NULL
)
