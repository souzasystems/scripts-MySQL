DROP PROCEDURE IF EXISTS sp_ALTERA_VIA;

DELIMITER //

CREATE PROCEDURE sp_ALTERA_VIA(
    IN p_ID_VIA        INT,
    IN p_ID_LOGRADOURO SMALLINT,
    IN p_ID_BAIRRO     INT,
    IN p_NOME_VIA      VARCHAR(60),
    IN p_CEP           CHAR(8),
    IN p_INATIVA        BIT,
    IN p_LOG_ID_USUARIO SMALLINT
)
BEGIN
    UPDATE VIAS
       SET ID_LOGRADOURO  = p_ID_LOGRADOURO,
           ID_BAIRRO      = p_ID_BAIRRO,
           NOME_VIA       = p_NOME_VIA,
           CEP            = p_CEP,
           INATIVA        = p_INATIVA,
           LOG_ID_USUARIO = p_LOG_ID_USUARIO,
           LOG_ROTINA     = 'A',
           LOG_DATA_HORA  = NOW()
     WHERE ID_VIA = p_ID_VIA;
END//

DELIMITER ;
