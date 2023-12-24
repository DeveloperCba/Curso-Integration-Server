CREATE TABLE [dbo].[DimEstado]
(
	[SkEstado] INT NOT NULL PRIMARY KEY, 
    [Estado] VARCHAR(50) NULL, 
    [Uf] VARCHAR(20) NULL, 
    [Latitude] FLOAT NULL, 
    [Longitude] FLOAT NULL 
)
