CREATE TABLE [dbo].[AuditoriaETL]
(
	[Id] INT NOT NULL PRIMARY KEY identity(1,1), 
    [DataInicio] DATETIME NULL, 
    [DataFim] DATETIME NULL, 
    [Projeto] VARCHAR(50) NULL
)
