CREATE TABLE [dbo].[DimCidade]
(
	[SkCidade] INT NOT NULL PRIMARY KEY, 
    [Cidade] VARCHAR(250) NULL, 
    [SkEstado] INT NULL, 
    [Estado] VARCHAR(250) NULL, 
    [Latitude] FLOAT NULL, 
    [Longitude] FLOAT NULL 
)
