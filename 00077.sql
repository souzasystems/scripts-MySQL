DROP PROCEDURE IF EXISTS sp_ALTERA_LOGRADOURO;

DELIMITER //

CREATE PROCEDURE sp_ALTERA_LOGRADOURO(
    IN p_ID_LOGRADOURO          SMALLINT,
    IN p_DESCRICAO_LOGRADOURO   VARCHAR(25),
    IN p_ABREVIATURA_LOGRADOURO VARCHAR(10),
    IN p_INATIVO                BIT,
    IN p_LOG_ID_USUARIO         SMALLINT
)
BEGIN
    UPDATE LOGRADOUROS
       SET DESCRICAO_LOGRADOURO   = p_DESCRICAO_LOGRADOURO,
           ABREVIATURA_LOGRADOURO = p_ABREVIATURA_LOGRADOURO,
           INATIVO                = p_INATIVO,
           LOG_ID_USUARIO         = p_LOG_ID_USUARIO,
           LOG_ROTINA             = 'A',
           LOG_DATA_HORA          = NOW()
     WHERE ID_LOGRADOURO = p_ID_LOGRADOURO;
END//

DELIMITER ;
