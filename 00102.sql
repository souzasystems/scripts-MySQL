DROP VIEW IF EXISTS vw_LOTEAMENTOS_QUADRAS;

CREATE VIEW vw_LOTEAMENTOS_QUADRAS AS
    SELECT LOTEAMENTOS.ID_LOTEAMENTO,
           LOTEAMENTOS.ID_QUADRA,
           LOTEAMENTOS.DESCRICAO_LOTEAMENTO,
           LOTEAMENTOS.INATIVO,
           QUADRAS.DESCRICAO_QUADRA
      FROM LOTEAMENTOS
     INNER JOIN QUADRAS
	    ON QUADRAS.ID_QUADRA = LOTEAMENTOS.ID_QUADRA;
