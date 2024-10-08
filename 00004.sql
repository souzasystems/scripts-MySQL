DELIMITER //

DROP PROCEDURE IF EXISTS sp_EXCLUI_USUARIO //

CREATE PROCEDURE sp_EXCLUI_USUARIO (
    IN p_ID_USUARIO          SMALLINT,
    IN p_LOG_ID_USUARIO      SMALLINT,
    IN p_LOG_MOTIVO_EXCLUSAO TEXT
)
BEGIN
    UPDATE USUARIOS
       SET LOG_ID_USUARIO      = p_LOG_ID_USUARIO,
           LOG_ROTINA          = 'E',
           LOG_DATA_HORA       = NOW(),
           LOG_MOTIVO_EXCLUSAO = p_LOG_MOTIVO_EXCLUSAO
     WHERE ID_USUARIO = p_ID_USUARIO;

    DELETE FROM USUARIOS
     WHERE ID_USUARIO = p_ID_USUARIO;
END //

DELIMITER ;
