﻿CREATE TABLE dbo.DimTempo( 
 /* OBS 1: Nas dimensoes havera somente uma chave primaria simples com autoincremento e inteiro */
 SkTempo int NOT NULL PRIMARY KEY,
 Data date NOT NULL,
 Ano smallint NOT NULL,
 Mes smallint NOT NULL,
 Dia smallint NOT NULL,
 DiaSemana smallint NOT NULL,
 DiaAno smallint NOT NULL,
 AnoBissexto char(1) NOT NULL,
 DiaUtil char(1) NOT NULL,
 FimSemana char(1) NOT NULL,
 Feriado char(1) NOT NULL,
 PreFeriado char(1) NOT NULL,
 PosFeriado char(1) NOT NULL,
 NomeFeriado varchar(30) NULL,
 NomeDiaSemana varchar(15) NOT NULL,
 NomeDiaSemanaAbrev char(3) NOT NULL,
 NomeMes varchar(15) NOT NULL,
 NomeMesAbrev char(3) NOT NULL,
 Quinzena smallint NOT NULL,
 Bimestre smallint NOT NULL,
 Trimestre smallint NOT NULL,
 Semestre smallint NOT NULL,
 NumeroSemanaMes smallint NOT NULL,
 NumeroSemanaAno smallint NOT NULL,
 EstacaoAno varchar(15) NOT NULL,
 DataPorExtenso varchar(50) NOT NULL,
 Evento varchar(50) NULL)