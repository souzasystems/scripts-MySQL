DROP PROCEDURE IF EXISTS sp_INSERE_QUADRA;

DELIMITER //

CREATE PROCEDURE sp_INSERE_QUADRA(
    IN  p_ID_BAIRRO        INTEGER,
    IN  p_DESCRICAO_QUADRA VARCHAR(35),
    IN  p_COMPLEMENTO      VARCHAR(05),
    IN  p_INATIVA          BIT,
    IN  p_LOG_ID_USUARIO   SMALLINT,
    OUT p_ID_QUADRA        SMALLINT
)
BEGIN
    INSERT INTO QUADRAS (
        ID_BAIRRO,
        DESCRICAO_QUADRA,
        COMPLEMENTO,
        INATIVA,
        LOG_ID_USUARIO,
        LOG_ROTINA,
        LOG_DATA_HORA
    ) VALUES (
        p_ID_BAIRRO,
        p_DESCRICAO_QUADRA,
        p_COMPLEMENTO,
        p_INATIVA,
        p_LOG_ID_USUARIO,
        'I',
        NOW()
    );

    SET p_ID_QUADRA = LAST_INSERT_ID();
END//

DELIMITER ;
