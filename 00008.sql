DELIMITER //

DROP PROCEDURE IF EXISTS sp_INSERE_TIPO_ENDERECO //

CREATE PROCEDURE sp_INSERE_TIPO_ENDERECO (
    IN  p_DESCRICAO_TIPO_ENDERECO VARCHAR(25),
    IN  p_LOG_ID_USUARIO SMALLINT,
    OUT p_ID_TIPO_ENDERECO TINYINT
)
BEGIN
    INSERT INTO TIPOS_ENDERECO (
        DESCRICAO_TIPO_ENDERECO,
        LOG_ID_USUARIO,
        LOG_ROTINA
    ) VALUES (
        p_DESCRICAO_TIPO_ENDERECO,
        p_LOG_ID_USUARIO,
        'I'
    );

    -- GET THE LAST INSERTED ID
    SET p_ID_TIPO_ENDERECO = LAST_INSERT_ID();
END //

DELIMITER ;