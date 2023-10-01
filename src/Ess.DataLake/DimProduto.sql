CREATE TABLE [dbo].[DimProduto]
(
	 SkTempo		INT
	,SkProduto		INT NOT NULL PRIMARY KEY
	,Produto		VARCHAR(100)
	,SkFornecedor   INT NOT NULL
	,Fornecedor		VARCHAR(200)
	,SkCategoria	INT NOT NULL
	,Categoria		VARCHAR(50)
	,SkUnidade		INT NOT NULL
	,Unidade		VARCHAR(20)
	,ValorCompra	DECIMAL(10,2)
	,ValorVenda		DECIMAL(10,2)
	,Lucro			DECIMAL(10,2)
	,Metadado		VARCHAR(200)
)
