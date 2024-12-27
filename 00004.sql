CREATE TABLE IF NOT EXISTS ESTADOS_CIVIS (
    ID_ESTADO_CIVIL TINYINT AUTO_INCREMENT,
    DESCRICAO_ESTADO_CIVIL VARCHAR(25) NULL,
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA VARCHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO VARCHAR(255),
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_ESTADOS_CIVIS PRIMARY KEY (ID_ESTADO_CIVIL),
    CONSTRAINT FK_ESTADOS_CIVIS_USUARIOS FOREIGN KEY (LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);
