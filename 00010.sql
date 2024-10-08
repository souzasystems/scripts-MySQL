DELIMITER //

DROP PROCEDURE IF EXISTS sp_EXCLUI_TIPO_ENDERECO //

CREATE PROCEDURE sp_EXCLUI_TIPO_ENDERECO (
    IN p_ID_TIPO_ENDERECO TINYINT,
    IN p_LOG_ID_USUARIO SMALLINT,
    IN p_LOG_MOTIVO_EXCLUSAO VARCHAR(255)
)
BEGIN
    -- Update statement
    UPDATE TIPOS_ENDERECO
       SET LOG_ID_USUARIO      = p_LOG_ID_USUARIO,
           LOG_ROTINA          = 'E',
           LOG_DATA_HORA       = CURRENT_TIMESTAMP,
           LOG_MOTIVO_EXCLUSAO = p_LOG_MOTIVO_EXCLUSAO
     WHERE ID_TIPO_ENDERECO = p_ID_TIPO_ENDERECO;

    -- Delete statement
    DELETE FROM TIPOS_ENDERECO
     WHERE ID_TIPO_ENDERECO = p_ID_TIPO_ENDERECO;
END //

DELIMITER ;
