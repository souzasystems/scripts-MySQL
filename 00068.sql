DROP PROCEDURE IF EXISTS sp_INSERE_BAIRRO;

DELIMITER //

CREATE PROCEDURE sp_INSERE_BAIRRO(
    IN  p_ID_CIDADE      SMALLINT,
    IN  p_NOME_BAIRRO    VARCHAR(70),
    IN  p_DATA_VIGORACAO DATE,
    IN  p_INATIVO        BIT,
    IN  p_LOG_ID_USUARIO SMALLINT,
    OUT p_ID_BAIRRO      INT
)
BEGIN
    INSERT INTO BAIRROS (
        ID_CIDADE,
        NOME_BAIRRO,
        DATA_VIGORACAO,
        INATIVO,
        LOG_ID_USUARIO,
        LOG_ROTINA
    ) VALUES (
        p_ID_CIDADE,
        p_NOME_BAIRRO,
        p_DATA_VIGORACAO,
        p_INATIVO,
        p_LOG_ID_USUARIO,
        'I'
    );

    SET p_ID_BAIRRO = LAST_INSERT_ID();
END//

DELIMITER ;
