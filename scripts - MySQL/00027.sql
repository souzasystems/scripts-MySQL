DROP PROCEDURE IF EXISTS sp_ALTERA_PAIS;

DELIMITER //

CREATE PROCEDURE sp_ALTERA_PAIS (
    IN p_ID_PAIS         SMALLINT,
    IN p_NOME_PAIS       VARCHAR(50),
    IN p_SIGLA02         CHAR(2),
    IN p_SIGLA03         CHAR(3),
    IN p_CODIGO_ISO_3166 SMALLINT,
    IN p_NUMERO_DDI      SMALLINT,
    IN p_INATIVO         BIT,
    IN p_LOG_ID_USUARIO  SMALLINT
)
BEGIN
    UPDATE PAISES
       SET NOME_PAIS       = p_NOME_PAIS,
           SIGLA02         = p_SIGLA02,
           SIGLA03         = p_SIGLA03,
           CODIGO_ISO_3166 = p_CODIGO_ISO_3166,
           NUMERO_DDI      = p_NUMERO_DDI,
           INATIVO         = p_INATIVO,
           LOG_ID_USUARIO  = p_LOG_ID_USUARIO,
           LOG_ROTINA      = 'A',
           LOG_DATA_HORA   = NOW()
     WHERE ID_PAIS = p_ID_PAIS;
END//

DELIMITER ;
