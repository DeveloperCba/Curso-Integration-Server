CREATE TABLE [dbo].[FatoVenda]
(
	[SkVenda] INT NOT NULL , 
    [SkEmpresa] BIGINT NOT NULL, 
    [Item] INT NOT NULL, 
    [SkMesa] INT NULL, 
    [SkFuncionario] INT NULL, 
    [SkTempo] INT NULL, 
    [SkProduto] INT NULL, 
    [Quantidade] FLOAT NULL, 
    [ValorUnitario] DECIMAL(18, 2) NULL, 
    [ValorTotal] DECIMAL(18, 2) NULL, 
    [Metadado] VARCHAR(150) NULL, 

    PRIMARY KEY ([Item], [SkEmpresa], [SkVenda])
)
