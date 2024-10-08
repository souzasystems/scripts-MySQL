DROP PROCEDURE IF EXISTS sp_CONSULTA_CONDOMINIOS;

DELIMITER //

CREATE PROCEDURE sp_CONSULTA_CONDOMINIOS(
    IN p_NOME_CONDOMINIO VARCHAR(50),
    IN p_INATIVO         SMALLINT
)
BEGIN
    SELECT ID_CONDOMINIO,
           ID_BAIRRO,
           NOME_CONDOMINIO,
           INATIVO,
           NOME_BAIRRO
      FROM vw_CONDOMINIOS_BAIRROS
     WHERE INATIVO = p_INATIVO
       AND NOME_CONDOMINIO LIKE p_NOME_CONDOMINIO;
END//

DELIMITER ;
