CREATE TABLE IF NOT EXISTS DADOS_BANCARIOS_PESSOAS (
    ID_DADO_BANCARIO_PESSOA INT AUTO_INCREMENT,
    ID_PESSOA INT NOT NULL,
    ID_BANCO SMALLINT NOT NULL,
    NUM_AGENCIA VARCHAR(15) NULL,
    DIG_VERIF_AGENCIA VARCHAR(02) NULL,
    CONTA VARCHAR(15) NULL,
    DIG_VERIF_CONTA VARCHAR(02) NULL,
    TIPO_PAGTO_BANCARIO BIT NULL,
    TIPO_TRANS_PIX TINYINT NULL,
    TIPO_CHAVE_PIX TINYINT NULL,
    CHAVE_PIX VARCHAR(100) NULL,
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA VARCHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO VARCHAR(255) DEFAULT 'EXCLUSÃO PADRÃO',
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_DADOS_BANCARIOS_PESSOAS PRIMARY KEY(ID_DADO_BANCARIO_PESSOA),
    CONSTRAINT FK_DADOS_BANCARIOS_PESSOAS_BANCOS FOREIGN KEY(ID_BANCO) REFERENCES BANCOS(ID_BANCO),
    CONSTRAINT FK_DADOS_BANCARIOS_PESSOAS_PESSOAS FOREIGN KEY(ID_PESSOA) REFERENCES PESSOAS(ID_PESSOA),
    CONSTRAINT FK_DADOS_BANCARIOS_PESSOAS_USUARIOS FOREIGN KEY (LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);