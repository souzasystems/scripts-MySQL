CREATE TABLE IF NOT EXISTS FORMAS_PAGAMENTO (
    ID_FORMA_PAGAMENTO TINYINT AUTO_INCREMENT,
    NOME_FORMA_PAGAMENTO VARCHAR(50) NULL,
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA VARCHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO VARCHAR(255),
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_FORMAS_PAGTOS PRIMARY KEY (ID_FORMA_PAGAMENTO),
    CONSTRAINT FK_FORMAS_PAGTOS_USUARIOS FOREIGN KEY(LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);