DROP PROCEDURE IF EXISTS sp_CONSULTA_TIPO_TELEFONE;

DELIMITER //

CREATE PROCEDURE sp_CONSULTA_TIPO_TELEFONE(
    IN p_ID_TIPO_TELEFONE TINYINT
)
BEGIN
    SELECT ID_TIPO_TELEFONE,
           DESCRICAO_TIPO_TELEFONE,
           MASCARA_TELEFONE
      FROM TIPOS_TELEFONE
     WHERE ID_TIPO_TELEFONE = p_ID_TIPO_TELEFONE;
END //

DELIMITER ;
