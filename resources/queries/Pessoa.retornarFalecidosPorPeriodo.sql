--Consulta que retorna número USP, nome, data de nascimento, 
--data de falecimento e gênero (F, M) dos falecidos no período da pandemia (26/02/2020) até os dias de hoje.
--Apenas pessoas que possuíam vínculo com a FFLCH. 

SELECT DISTINCT c.codpes, p.nompes, p.dtanas, dtaflc, p.sexpes from fflch.dbo.COMPLPESSOA c 
  JOIN fflch.dbo.PESSOA p ON c.codpes = p.codpes 
  JOIN fflch.dbo.VINCULOPESSOAUSP v on c.codpes = v.codpes
    WHERE c.dtaflc BETWEEN __dtaini__ AND __dtafim__
    AND v.codclg = 8
    ORDER BY c.dtaflc
