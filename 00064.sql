DROP PROCEDURE IF EXISTS sp_CONSULTA_DISTRITO;

DELIMITER //

CREATE PROCEDURE sp_CONSULTA_DISTRITO(
    IN p_ID_DISTRITO SMALLINT
)
BEGIN
   SELECT ID_DISTRITO,
          ID_CIDADE,
          NOME_DISTRITO,
          INATIVO
     FROM DISTRITOS
    WHERE ID_DISTRITO = p_ID_DISTRITO;
END//

DELIMITER ;