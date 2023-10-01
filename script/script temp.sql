

use Siscom_Dev_Loja01_Update
go

/*
-- Consulta Dim Produto
select 
	 0					AS ProdutoId
	,'INDEFINIDO'		AS Produto
	,'0'				AS FornecedorId
	,'INDEFINIDO'		AS Fornecedor 
	,'0'				AS CategoriaId
	,'INDEFINIDO'		AS Categoria 
	,'0'				AS UnidadeId
	,'INDEFINIDO'		AS Unidade 
	,'0'				AS ValorCompra
	,'0'				AS ValorVenda
	,'0'				AS Lucro
	,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
from produto			t0
UNION
select 
	 t0.ProdutoId							AS ProdutoId
	,t0.Descricao							AS Produto
	,ISNULL(t0.FornecedorID,0)				AS FornecedorId
	,ISNULL(t3.Nome,'INDEFINIDO')			AS Fornecedor 
	,ISNULL(t0.CategoriaId,0)				AS CategoriaId
	,ISNULL(t1.Descricao,'INDEFINIDO')		AS Categoria 
	,ISNULL(t0.UnidadeId,0)					AS UnidadeId
	,ISNULL(t2.Abreviacao,'INDEFINIDO')		AS Unidade 
	,ISNULL(t0.ValorCompra,0)				AS ValorCompra
	,ISNULL(t0.ValorVenda,0)				AS ValorVenda
	,CAST(t0.Lucro AS NUMERIC(10,2))		AS Lucro
	,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
from produto			t0
inner join Categoria	t1 on t0.CategoriaId	= t1.CategoriaId
inner join Unidade		t2 on t0.UnidadeId		= t2.UnidadeId
inner join Fornecedor	t3 on t0.FornecedorID	= t3.FornecedorID
--order by t0.ProdutoId

*/
/********* CLIENTE ******************/
/*

SELECT 
	 0						AS ClienteId
	,'INDEFINIDO'			AS CpfCnpj
	,'INDEFINIDO'			AS Nome
	,'INDEFINIDO'			AS Endereco
	,'INDEFINIDO'			AS Bairro
	,'INDEFINIDO'			AS Complemento
	,'INDEFINIDO'			AS Cep
	,'0'					AS TipoPessoa
	,0						AS CidadeId
	,'INDEFINIDO'			AS Cidade
	,0						AS EstadoId
	,'INDEFINIDO'			AS Estado
	,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
FROM 
	Cliente			AS t0
UNION
SELECT 
	ISNULL(ClienteID,0)				AS ClienteId
	,ISNULL(CnpjCpf,'INDEFINIDO')		AS CpfCnpj
	,ISNULL(Nome,'INDEFINIDO')			AS Nome
	,ISNULL(Endereco,'INDEFINIDO')		AS Endereco
	,ISNULL(Bairro,'INDEFINIDO')		AS Bairro
	,ISNULL(Complemento,'INDEFINIDO')	AS Complemento
	,ISNULL(Cep,'INDEFINIDO')			AS Cep
	,ISNULL(TipoPessoa,'F')				AS TipoPessoa
	,ISNULL(Municipio,0)				AS CidadeId
	,ISNULL(Cidade,'INDEFINIDO')		AS Cidade
	,ISNULL(t2.IBGE,0)					AS EstadoId
	,ISNULL(t2.UF,'INDEFINIDO')			AS Estado
	,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
FROM 
	Cliente			AS t0
INNER JOIN Cidade	AS t1 ON t0.Municipio = t1.CodCidade
INNER JOIN UF		AS t2 ON t0.UF		  = t2.UF


*/

/*

SELECT 
	 0						AS FornecedorId
	,'INDEFINIDO'			AS CpfCnpj
	,'INDEFINIDO'			AS Nome
	,'INDEFINIDO'			AS Endereco
	,'INDEFINIDO'			AS Bairro
	,'INDEFINIDO'			AS Complemento
	,'INDEFINIDO'			AS Cep
	,'0'					AS TipoPessoa
	,0						AS CidadeId
	,'INDEFINIDO'			AS Cidade
	,0						AS EstadoId
	,'INDEFINIDO'			AS Estado
	,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
FROM 
	Fornecedor			AS t0
UNION
SELECT 
	ISNULL(FornecedorId,0)				AS FornecedorId
	,ISNULL(CnpjCpf,'INDEFINIDO')		AS CpfCnpj
	,ISNULL(Nome,'INDEFINIDO')			AS Nome
	,ISNULL(Endereco,'INDEFINIDO')		AS Endereco
	,ISNULL(Bairro,'INDEFINIDO')		AS Bairro
	,ISNULL(Complemento,'INDEFINIDO')	AS Complemento
	,ISNULL(Cep,'INDEFINIDO')			AS Cep
	,ISNULL(TipoPessoa,0)				AS TipoPessoa
	,ISNULL(Municipio,0)				AS CidadeId
	,ISNULL(Cidade,'INDEFINIDO')		AS Cidade
	,ISNULL(t2.IBGE,0)					AS EstadoId
	,ISNULL(t2.UF,'INDEFINIDO')			AS Estado
	,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
FROM 
	Fornecedor		AS t0
LEFT JOIN Cidade	AS t1 ON t0.Municipio = t1.CodCidade
LEFT JOIN UF		AS t2 ON t0.UF		  = t2.UF
 


 */

 /*


 SELECT 
	 0						AS EmpresaId
	,'INDEFINIDO'			AS CpfCnpj
	,'INDEFINIDO'			AS RazaoSocial
	,'INDEFINIDO'			AS NomeFantasia
	,'INDEFINIDO'			AS Endereco
	,'INDEFINIDO'			AS Bairro
	,'INDEFINIDO'			AS Complemento
	,'INDEFINIDO'			AS Cep
	,0						AS CidadeId
	,'INDEFINIDO'			AS Cidade
	,0						AS EstadoId
	,'INDEFINIDO'			AS Estado
	,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
FROM 
	Empresa			AS t0
UNION
SELECT 
	 CONVERT(BIGINT,REPLACE(REPLACE(REPLACE(ISNULL(CnpjCpf,0),'.',''),'-',''),'/',''))AS EmpresaId
	,ISNULL(CnpjCpf,'INDEFINIDO')		AS CpfCnpj
	,ISNULL(RazaoSocial,'INDEFINIDO')	AS RazaoSocial
	,ISNULL(NomeFantasia,'INDEFINIDO')	AS NomeFantasia
	,ISNULL(Endereco,'INDEFINIDO')		AS Endereco
	,ISNULL(Bairro,'INDEFINIDO')		AS Bairro
	,ISNULL(Complemento,'INDEFINIDO')	AS Complemento
	,ISNULL(Cep,'INDEFINIDO')			AS Cep
	,ISNULL(Municipio,0)				AS CidadeId
	,ISNULL(Cidade,'INDEFINIDO')		AS Cidade
	,ISNULL(t2.IBGE,0)					AS EstadoId
	,ISNULL(t2.UF,'INDEFINIDO')			AS Estado
	,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
FROM 
	Empresa		AS t0
LEFT JOIN Cidade	AS t1 ON t0.Municipio = t1.CodCidade
LEFT JOIN UF		AS t2 ON t0.UF		  = t2.UF



*/
 
/*

SELECT 
	 0						AS CidadeId
	,'INDEFINIDO'			AS Cidade
	,0						AS UfId
	,'INDEFINIDO'			AS Uf
	,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
	,0.0000					AS Latitude	
	,0.0000					AS Longitude
FROM 
	Cidade			AS t0
UNION
SELECT 
	 t0.CodCidade			AS CidadeId
	,t0.Descricao			AS Cidade
	,t1.IDUF				AS UfId
	,t1.UF					AS Uf
	,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
	,0.0000					AS Latitude
	,0.0000					AS Longitude
FROM 
	Cidade			AS t0
LEFT JOIN UF		AS t1 ON t0.IDUF		  = t1.IDUF

*/


/*

SELECT 
	 0								AS FornecedorId
	,ISNULL(NULL,'INDEFINIDO')		AS Nome
	,ISNULL(NULL,'INDEFINIDO')		AS Endereco
	,ISNULL(NULL,'INDEFINIDO')		AS Bairro
	,ISNULL(NULL,'INDEFINIDO')		AS Complemento
	,ISNULL(NULL,'INDEFINIDO')		AS Telefone
	,ISNULL(NULL,'INDEFINIDO')		AS Celular
	,ISNULL(NULL,0)					AS DepartamentoId
	,ISNULL(NULL,'INDEFINIDO')		AS Departamento
	,0								AS EmpresaId
	,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
FROM 
	Funcionario			AS t0
UNION
SELECT 
	 ISNULL(FuncionarioId,0)				AS FuncionarioId
	,ISNULL(t0.Nome,'INDEFINIDO')			AS Nome
	,ISNULL(t0.Endereco,'INDEFINIDO')		AS Endereco
	,ISNULL(t0.Bairro,'INDEFINIDO')			AS Bairro
	,ISNULL(t0.Complemento,'INDEFINIDO')	AS Complemento
	,ISNULL(t0.Telefone,'INDEFINIDO')		AS Telefone
	,ISNULL(t0.Celular,'INDEFINIDO')		AS Celular
	,ISNULL(t1.DepartamentoID,0)			AS DepartamentoId
	,ISNULL(t1.Descricao,'INDEFINIDO')		AS Departamento
	,CONVERT(BIGINT,REPLACE(REPLACE(REPLACE(ISNULL(t2.CnpjCpf,0),'.',''),'-',''),'/',''))AS EmpresaId
	,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
-- select *
FROM 
	Funcionario			AS t0
LEFT JOIN Departamento  AS t1 ON t0.DepartamentoID  = t1.DepartamentoID
LEFT JOIN Empresa		AS t2 ON t2.EmpresaID		= 1--t0.EmpresaId

 */


 /*

  SELECT
     CONVERT(INT,0)								As MesaId
   ,'BALCAO'									AS Mesa
   ,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
 UNION
 SELECT
    
	CASE
		WHEN DESCRICAO IN('BALCAO','BALCÃO') THEN 0
	ELSE
		CONVERT(INT,REPLACE(DESCRICAO,'MESA ','')) 
	END As MesaId
   ,Descricao					AS Mesa
   ,CONVERT(INT,REPLACE(CONVERT(DATE,GETDATE(),120),'-',''))	AS DataHora
 FROM Mesa


 */
/*

 select 
	 VendaId					AS VendaId
	,CASE
		WHEN t0.Mesa IN('BALCAO','BALCÃO','CAIXA') THEN 0
		ELSE
		CONVERT(INT,REPLACE(t0.Mesa,'MESA ','')) END
	 AS MesaId
	,ISNULL(t0.FuncionarioID,0)	AS FuncionarioId
	,t1.Nome					AS Funcionario
	,CONVERT(DATE,Data,120)		AS Data
	,ValorTotal					AS ValorTotal
	,Desconto					AS Desconto
	,ValorFinal					AS ValorFinal
	,ValorDinheiro				AS ValorDinheiro
	,ValorCartao				AS ValorCartao
	,ValorPix					AS ValorPix
	,CONVERT(BIGINT,REPLACE(REPLACE(REPLACE(ISNULL(t3.CnpjCpf,0),'.',''),'-',''),'/',''))AS EmpresaId
	,CONVERT(INT,REPLACE(CONVERT(DATE,Data,120),'-',''))	AS DataHora
 from Venda					t0
 LEFT JOIN Funcionario		t1 ON t0.FuncionarioId = t1.FuncionarioId
 LEFT JOIN	Mesa			t2 ON CASE
									WHEN t0.Mesa IN('BALCAO','BALCÃO','CAIXA') THEN 0
								   ELSE
									CONVERT(INT,REPLACE(t0.Mesa,'MESA ','')) END 
													=  CASE
													WHEN t2.Descricao IN('BALCAO','BALCÃO','CAIXA') THEN 0
												ELSE
													CONVERT(INT,REPLACE(t2.Descricao,'MESA ','')) END 
LEFT JOIN Empresa		AS t3 ON t3.EmpresaID		= 1--t0.EmpresaId

*/
											
 select 
	 t0.VendaId					AS VendaId
	,CASE
		WHEN t0.Mesa IN('BALCAO','BALCÃO','CAIXA') THEN 0
		ELSE
		CONVERT(INT,REPLACE(t0.Mesa,'MESA ','')) END
	 AS MesaId
	,ISNULL(t0.FuncionarioID,0)	AS FuncionarioId

	--,t1.Nome					AS Funcionario
	,CONVERT(DATE,Data,120)		AS Data
	--,t4.Item					AS Item
	,t4.ProdutoID				AS ProdutoId
	--,T5.Descricao				AS Produto
	,CONVERT(BIGINT,REPLACE(REPLACE(REPLACE(ISNULL(t3.CnpjCpf,0),'.',''),'-',''),'/',''))AS EmpresaId
	,CONVERT(INT,REPLACE(CONVERT(DATE,Data,120),'-',''))	AS DataHora
	,t4.Quantidade				AS Quantidade
	,t4.ValorUnitario			AS ValorUnitario
	,t4.ValorTotal				AS ValorTotal
	,ISNULL(t4.Item,0)			AS Item
 from Venda					t0
 LEFT JOIN VendaItens		t4 ON t0.VendaId	   = t4.VendaID
 LEFT JOIN Funcionario		t1 ON t0.FuncionarioId = t1.FuncionarioId
 LEFT JOIN	Mesa			t2 ON CASE
									WHEN t0.Mesa IN('BALCAO','BALCÃO','CAIXA') THEN 0
								   ELSE
									CONVERT(INT,REPLACE(t0.Mesa,'MESA ','')) END 
													=  CASE
													WHEN t2.Descricao IN('BALCAO','BALCÃO','CAIXA') THEN 0
												ELSE
													CONVERT(INT,REPLACE(t2.Descricao,'MESA ','')) END 
LEFT JOIN Empresa		AS t3 ON t3.EmpresaID		= 1--t0.EmpresaId
LEFT JOIN Produto		AS t5 ON t5.ProdutoId       = t4.ProdutoId
 


 /*

DELETE FROM [dbo].[DimCidade]
DELETE FROM [dbo].[DimCliente]
DELETE FROM [dbo].[DimEmpresa]
DELETE FROM [dbo].[DimFornecedor]
DELETE FROM [dbo].[DimFuncionario]
DELETE FROM [dbo].[DimMesa]
DELETE FROM [dbo].[DimProduto]
DELETE FROM [dbo].[DimVenda]
DELETE FROM [dbo].[FatoVenda]


SELECT COUNT(0) FROM [dbo].[DimCidade]
SELECT COUNT(0) FROM [dbo].[DimCliente]
SELECT COUNT(0) FROM [dbo].[DimEmpresa]
SELECT COUNT(0) FROM [dbo].[DimFornecedor]
SELECT COUNT(0) FROM [dbo].[DimFuncionario]
SELECT COUNT(0) FROM [dbo].[DimMesa]
SELECT COUNT(0) FROM [dbo].[DimProduto]
SELECT COUNT(0) FROM [dbo].[DimVenda]
SELECT COUNT(0) FROM [dbo].[FatoVenda]
 

SELECT * FROM [dbo].[DimCidade]
SELECT * FROM [dbo].[DimCliente]
SELECT * FROM [dbo].[DimEmpresa]
SELECT * FROM [dbo].[DimFornecedor]
SELECT * FROM [dbo].[DimFuncionario]
SELECT * FROM [dbo].[DimMesa]
SELECT * FROM [dbo].[DimProduto]
SELECT COUNT(0) FROM [dbo].[DimVenda]
SELECT COUNT(0) FROM [dbo].[FatoVenda]
*/