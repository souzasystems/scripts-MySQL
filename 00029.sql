CREATE TABLE IF NOT EXISTS LOTES (
    ID_LOTE SMALLINT AUTO_INCREMENT,
    ID_LOTEAMENTO SMALLINT NOT NULL,
    DESCRICAO_LOTE VARCHAR(25),
    COMPLEMENTO VARCHAR(20),
    INATIVO BIT DEFAULT b'0',
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA CHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO VARCHAR(255) DEFAULT 'EXCLUSÃO PADRÃO',
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_LOTES PRIMARY KEY (ID_LOTE),
    CONSTRAINT FK_LOTES_LOTEAMENTOS FOREIGN KEY (ID_LOTEAMENTO) REFERENCES LOTEAMENTOS(ID_LOTEAMENTO),
    CONSTRAINT FK_LOTES_USUARIOS FOREIGN KEY (LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);
