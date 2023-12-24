CREATE TABLE [dbo].[DimEmpresa]
(
	[SkEmpresa] BIGINT NOT NULL PRIMARY KEY, 
    [RazaoSocial] VARCHAR(250) NULL, 
    [NomeFantasia] VARCHAR(250) NULL, 
    [CpfCnpj] VARCHAR(20) NULL, 
    [Endereco] VARCHAR(350) NULL, 
    [Bairro] VARCHAR(150) NULL, 
    [Complemento] VARCHAR(250) NULL, 
    [Cep] VARCHAR(10) NULL, 
    [SkCidade] INT NULL, 
    [Cidade] VARCHAR(250) NULL, 
    [SkEstado] INT NULL, 
    [Estado] VARCHAR(20) NULL 

)
