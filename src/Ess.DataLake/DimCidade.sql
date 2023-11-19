CREATE TABLE [dbo].[DimCidade]
(
    [SkTempo] INT NULL, 
	[SkCidade] INT NOT NULL PRIMARY KEY, 
    [Cidade] VARCHAR(250) NULL, 
    [SkEstado] INT NULL, 
    [Estado] VARCHAR(250) NULL, 
    [Latitude] FLOAT NULL, 
    [Longitude] FLOAT NULL
    
)
