DROP PROCEDURE IF EXISTS sp_ALTERA_ZONA;

DELIMITER //

CREATE PROCEDURE sp_ALTERA_ZONA(
    IN p_ID_ZONA                 SMALLINT,
    IN p_ID_TIPO_ZONA            TINYINT,
    IN p_DESCRICAO_ZONA          VARCHAR(50),
    IN p_INATIVA                 BIT,
    IN p_AREA_MINIMA             DECIMAL(15, 3),
    IN p_TESTADA_MINIMA          DECIMAL(15, 3),
    IN p_COMPLEMENTO_AREA_MINIMA VARCHAR(8),
    IN p_IDENTIFICADOR_ZONA      VARCHAR(10),
    IN p_LOG_ID_USUARIO          SMALLINT
)
BEGIN
    UPDATE ZONAS
       SET ID_TIPO_ZONA            = p_ID_TIPO_ZONA,
           DESCRICAO_ZONA          = p_DESCRICAO_ZONA,
           INATIVA                 = p_INATIVA,
           AREA_MINIMA             = p_AREA_MINIMA,
           TESTADA_MINIMA          = p_TESTADA_MINIMA,
           COMPLEMENTO_AREA_MINIMA = p_COMPLEMENTO_AREA_MINIMA,
           IDENTIFICADOR_ZONA      = p_IDENTIFICADOR_ZONA,
           LOG_ID_USUARIO          = p_LOG_ID_USUARIO,
           LOG_ROTINA              = 'A',
           LOG_DATA_HORA           = NOW()
     WHERE ID_ZONA = p_ID_ZONA;
END//

DELIMITER ;
