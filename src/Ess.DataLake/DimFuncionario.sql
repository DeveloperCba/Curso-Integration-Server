CREATE TABLE [dbo].[DimFuncionario]
(
	[SkFuncionario] INT NOT NULL , 
    [SkEmpresa] BIGINT NOT NULL ,
    [Nome] VARCHAR(250) NULL, 
    [Endereco] VARCHAR(350) NULL, 
    [Bairro] VARCHAR(150) NULL, 
    [Complemento] VARCHAR(250) NULL, 
    [Celular] VARCHAR(20) NULL,
    [Telefone] VARCHAR(20) NULL, 
    [SkDepartamento] INT NULL, 
    [Departamento] VARCHAR(250) NULL, 
    CONSTRAINT [PK_DimFuncionario] PRIMARY KEY ([SkFuncionario], [SkEmpresa])  
 
)
