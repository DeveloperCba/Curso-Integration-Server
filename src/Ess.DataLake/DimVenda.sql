CREATE TABLE [dbo].[DimVenda]
(
    [SkTempo] INT NOT NULL, 
	[SkVenda] INT NOT NULL , 
    [SkEmpresa] BIGINT NOT NULL, 
    [SkMesa] INT NULL, 
    [SkFuncionario] INT NULL, 
    [Funcionario] VARCHAR(150) NULL, 
    [Data] DATE NULL, 
    [ValorTotal] DECIMAL(18, 2) NULL, 
    [Desconto] DECIMAL(18, 2) NULL, 
    [ValorFinal] DECIMAL(18, 2) NULL, 
    [ValorDinheiro] DECIMAL(18, 2) NULL, 
    [ValorCartao] DECIMAL(18, 2) NULL, 
    [ValorPix] DECIMAL(18, 2) NULL, 
    [Metadado] VARCHAR(250) NULL, 
    PRIMARY KEY ([SkVenda], [SkEmpresa])
)
