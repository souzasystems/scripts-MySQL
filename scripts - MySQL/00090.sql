DROP PROCEDURE IF EXISTS sp_INSERE_VIA;

DELIMITER //

CREATE PROCEDURE sp_INSERE_VIA(
    IN  p_ID_LOGRADOURO  SMALLINT,
    IN  p_ID_BAIRRO      INT,
    IN  p_NOME_VIA       VARCHAR(60),
    IN  p_CEP            CHAR(8),
    IN  p_INATIVA        BIT,
    IN  p_LOG_ID_USUARIO SMALLINT,
    OUT p_ID_VIA         INT
)
BEGIN
    INSERT INTO VIAS (
        ID_LOGRADOURO,
        ID_BAIRRO,
        NOME_VIA,
        CEP,
        INATIVA,
        LOG_ID_USUARIO,
        LOG_ROTINA
    ) VALUES (
        p_ID_LOGRADOURO,
        p_ID_BAIRRO,
        p_NOME_VIA,
        p_CEP,
        p_INATIVA,
        p_LOG_ID_USUARIO,
        'I'
    );

    SET p_ID_VIA = LAST_INSERT_ID();
END//

DELIMITER ;
