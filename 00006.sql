CREATE TABLE IF NOT EXISTS ESTADOS (
    ID_ESTADO SMALLINT AUTO_INCREMENT NOT NULL,
    ID_PAIS SMALLINT NOT NULL,
    NOME_ESTADO VARCHAR(20) NULL,
    SIGLA_ESTADO CHAR(2) NULL,
    CODIGO_IBGE TINYINT NULL,
    INATIVO BIT DEFAULT 0,
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA VARCHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO VARCHAR(255),
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_ESTADOS PRIMARY KEY (ID_ESTADO),
    CONSTRAINT FK_ESTADOS_PAISES FOREIGN KEY (ID_PAIS) REFERENCES PAISES(ID_PAIS),
    CONSTRAINT FK_ESTADOS_USUARIOS FOREIGN KEY (LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);
