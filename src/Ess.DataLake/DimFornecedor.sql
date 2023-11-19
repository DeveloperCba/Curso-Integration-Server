CREATE TABLE [dbo].[DimFornecedor]
(
    [SkTempo] INT NOT NULL,
	[SkFornecedor] INT NOT NULL PRIMARY KEY, 
    [Nome] VARCHAR(250) NULL, 
    [CpfCnpj] VARCHAR(20) NULL, 
    [Endereco] VARCHAR(350) NULL, 
    [Bairro] VARCHAR(150) NULL, 
    [Complemento] VARCHAR(250) NULL, 
    [Cep] VARCHAR(10) NULL, 
    [TipoPessoa] INT NULL, 
    [SkCidade] INT NULL, 
    [Cidade] VARCHAR(250) NULL, 
    [SkEstado] INT NULL, 
    [Estado] VARCHAR(20) NULL, 
    [Metadado] VARCHAR(250) NULL 

)
