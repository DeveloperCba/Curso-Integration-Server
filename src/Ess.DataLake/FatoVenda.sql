CREATE TABLE [dbo].[FatoVenda]
(
	[SkVenda] INT NOT NULL , 
    [SkEmpresa] BIGINT NOT NULL, 
    [SkMesa] INT NOT NULL, 
    [SkFuncionario] INT NOT NULL, 
    [SkTempo] INT NOT NULL, 
    [SkProduto] INT NOT NULL, 
    [ValorVenda] DECIMAL(18, 2) NULL, 
    [Quantidade] DECIMAL(18, 2) NULL, 
    [TotalItem] INT NULL, 
    PRIMARY KEY ([SkVenda], [SkProduto], [SkEmpresa], [SkMesa], [SkFuncionario], [SkTempo])
)
