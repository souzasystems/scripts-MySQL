DROP PROCEDURE IF EXISTS sp_CONSULTA_BAIRRO;

DELIMITER //

CREATE PROCEDURE sp_CONSULTA_BAIRRO(
    IN p_ID_BAIRRO INT,
    IN p_NOME_BAIRRO VARCHAR(70)
)
BEGIN
    SELECT ID_BAIRRO,
           ID_CIDADE,
           NOME_BAIRRO,
           DATA_VIGORACAO,
           INATIVO
      FROM BAIRROS
     WHERE ID_BAIRRO   = p_ID_BAIRRO
        OR NOME_BAIRRO = p_NOME_BAIRRO;
END//

DELIMITER ;
