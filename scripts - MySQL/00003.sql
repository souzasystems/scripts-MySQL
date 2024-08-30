DELIMITER //

DROP PROCEDURE IF EXISTS sp_ALTERA_USUARIO //

CREATE PROCEDURE sp_ALTERA_USUARIO (
    IN p_ID_USUARIO                   SMALLINT,
    IN p_NOME_USUARIO                 VARCHAR(30),
    IN p_PRIVILEGIO                   CHAR(1),
    IN p_SENHA                        VARCHAR(128),
    IN p_INATIVO                      BIT,
    IN p_DATA_INICIO                  DATETIME,
    IN p_DATA_EXPIRACAO               DATETIME,
    IN p_QUANTIDADE_CONEXOES          TINYINT,
    IN p_QUANTIDADE_CONECTADO         TINYINT,
    IN p_ALTERAR_SENHA_PRIMEIRO_LOGON BIT,
    IN p_SENHA_POR_TRINTA_DIAS        BIT,
    IN p_LOG_ID_USUARIO               SMALLINT
)
BEGIN
    UPDATE USUARIOS
       SET NOME_USUARIO                 = p_NOME_USUARIO,
           PRIVILEGIO                   = p_PRIVILEGIO,
           SENHA                        = p_SENHA,
           INATIVO                      = p_INATIVO,
           DATA_INICIO                  = p_DATA_INICIO,
           DATA_EXPIRACAO               = p_DATA_EXPIRACAO,
           QUANTIDADE_CONEXOES          = p_QUANTIDADE_CONEXOES,
           QUANTIDADE_CONECTADO         = p_QUANTIDADE_CONECTADO,
           ALTERAR_SENHA_PRIMEIRO_LOGON = p_ALTERAR_SENHA_PRIMEIRO_LOGON,
           SENHA_POR_TRINTA_DIAS        = p_SENHA_POR_TRINTA_DIAS,
           LOG_ID_USUARIO               = p_LOG_ID_USUARIO,
           LOG_ROTINA                   = 'A',
           LOG_DATA_HORA                = NOW()
     WHERE ID_USUARIO = p_ID_USUARIO;
END //

DELIMITER ;
