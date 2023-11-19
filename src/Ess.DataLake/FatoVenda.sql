CREATE TABLE [dbo].[FatoVenda]
(
	[SkVenda] INT NOT NULL , 
    [SkEmpresa] BIGINT NOT NULL, 
    [SkMesa] INT NULL, 
    [SkFuncionario] INT NULL, 
    [SkTempo] INT NULL, 
    [SkProduto] INT NULL, 
    [ValorVenda] DECIMAL(18, 2) NULL, 
    [Quantidade] NCHAR(10) NULL, 
    [TotalItem] INT NULL, 
    [Metadado] VARCHAR(150) NULL, 
    PRIMARY KEY ([SkEmpresa], [SkVenda])
)
