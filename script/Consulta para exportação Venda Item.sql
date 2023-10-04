if OBJECT_ID('TEMPDB..#Venda') IS NOT NULL
DROP TABLE #Venda

SELECT  
	 --ft.SkVenda				AS VendaId
	 --ft.SkEmpresa			AS EmpresaId
	 CASE
		WHEN ft.SkEmpresa = 27039131000139 THEN 'LOJA 01'
		ELSE 'LOJA 02'
	END						AS Loja
	,de.NomeFantasia		AS Empresa
	--,ft.SkMesa				AS MesaId
	,me.Mesa				AS Mesa
	--,ft.SkFuncionario		AS FuncionarioId
	,fu.Nome				AS Funcionario
	,fu.Departamento		AS Departamento
	--,ft.SkTempo				AS DataId
	,dt.Data				AS Data
	--,ft.SkProduto			AS ProdutoId
	,pr.Produto				AS Produto
	,pr.Categoria			AS Categoria
	,pr.Fornecedor			AS Fornecedor
	--,ft.SkItem				AS Item
	,ft.Quantidade			AS Quantidade
	,ft.ValorUnitario		AS ValorUnitario
	,ft.ValorTotal			AS ValorTotal
INTO #Venda
FROM FatoVenda				ft
inner join DimEmpresa		de on ft.SkEmpresa		= de.SkEmpresa
inner join DimMesa			me on ft.SkMesa			= me.SkMesa
inner join DimFuncionario	fu on ft.SkFuncionario	= fu.SkFuncionario
inner join DimTempo			dt on ft.SkTempo		= dt.SkTempo
inner join DimProduto		pr on ft.SkProduto		= pr.SkProduto
WHERE 1=1
--AND Data >= '2023-08-01'
ORDER BY Data

SELECT 
	 Data
	,Loja
	,Empresa
	,Mesa
	,Funcionario
	,Departamento
	,Produto
	,Fornecedor
	,REPLACE(SUM(ValorTotal),'.',',') ValorTotal
FROM #Venda
group by 
	 Data
	,Loja
	,Empresa
	,Mesa
	,Funcionario
	,Departamento
	,Produto
	,Fornecedor