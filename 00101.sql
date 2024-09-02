DROP PROCEDURE IF EXISTS sp_CONSULTA_LOTEAMENTO;

DELIMITER //

CREATE PROCEDURE sp_CONSULTA_LOTEAMENTO(
    IN p_ID_LOTEAMENTO SMALLINT
)
BEGIN
    SELECT ID_LOTEAMENTO,
           ID_QUADRA,
           DESCRICAO_LOTEAMENTO,
           INATIVO,
           LOG_ID_USUARIO,
           LOG_ROTINA,
           LOG_DATA_HORA,
           LOG_MOTIVO_EXCLUSAO
      FROM LOTEAMENTOS
     WHERE ID_LOTEAMENTO = p_ID_LOTEAMENTO;
END//

DELIMITER ;