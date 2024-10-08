DROP PROCEDURE IF EXISTS sp_EXCLUI_LOGRADOURO;

DELIMITER //

CREATE PROCEDURE sp_EXCLUI_LOGRADOURO(
    IN p_ID_LOGRADOURO       SMALLINT,
    IN p_LOG_ID_USUARIO      SMALLINT,
    IN p_LOG_MOTIVO_EXCLUSAO VARCHAR(255)
)
BEGIN
    UPDATE LOGRADOUROS
       SET LOG_ID_USUARIO      = p_LOG_ID_USUARIO,
           LOG_ROTINA          = 'E',
           LOG_DATA_HORA       = NOW(),
           LOG_MOTIVO_EXCLUSAO = p_LOG_MOTIVO_EXCLUSAO
     WHERE ID_LOGRADOURO = p_ID_LOGRADOURO;

    DELETE FROM LOGRADOUROS
     WHERE ID_LOGRADOURO = p_ID_LOGRADOURO;
END//

DELIMITER ;
