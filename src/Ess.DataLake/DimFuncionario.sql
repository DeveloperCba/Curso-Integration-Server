CREATE TABLE [dbo].[DimFuncionario]
(
    [SkTempo] INT NOT NULL,
	[SkFuncionario] INT NOT NULL PRIMARY KEY, 
    [Nome] VARCHAR(250) NULL, 
    [Endereco] VARCHAR(350) NULL, 
    [Bairro] VARCHAR(150) NULL, 
    [Complemento] VARCHAR(250) NULL, 
    [Celular] VARCHAR(20) NULL,
    [Telefone] VARCHAR(20) NULL, 
    [SkDepartamento] INT NULL, 
    [Departamento] VARCHAR(250) NULL, 
    [SkEmpresa] BIGINT NULL, 
    [Metadado] VARCHAR(250) NULL
)
