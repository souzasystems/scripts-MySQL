DROP PROCEDURE IF EXISTS sp_CONSULTA_QUADRAS;

DELIMITER //

CREATE PROCEDURE sp_CONSULTA_QUADRAS(
    IN p_DESCRICAO_QUADRA VARCHAR(35),
    IN p_INATIVA          BIT
)
BEGIN
    SELECT ID_QUADRA,
           ID_BAIRRO,
           DESCRICAO_QUADRA,
           COMPLEMENTO,
           INATIVA,
           NOME_BAIRRO
      FROM vw_QUADRAS_BAIRROS
     WHERE INATIVA = p_INATIVA
       AND DESCRICAO_QUADRA LIKE p_DESCRICAO_QUADRA;
END//

DELIMITER ;
