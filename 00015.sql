CREATE TABLE IF NOT EXISTS DISTRITOS (
   ID_DISTRITO SMALLINT AUTO_INCREMENT NOT NULL,
   ID_CIDADE SMALLINT NOT NULL,
   NOME_DISTRITO VARCHAR(50) NULL,
   INATIVO BIT DEFAULT 0,
   LOG_ID_USUARIO SMALLINT NOT NULL,
   LOG_ROTINA VARCHAR(1) NOT NULL,
   LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
   LOG_MOTIVO_EXCLUSAO VARCHAR(255),
   CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
   CONSTRAINT PK_DISTRITOS PRIMARY KEY (ID_DISTRITO),
   CONSTRAINT FK_DISTRITOS_CIDADES FOREIGN KEY (ID_CIDADE) REFERENCES CIDADES (ID_CIDADE),
   CONSTRAINT FK_DISTRITOS_USUARIOS FOREIGN KEY (LOG_ID_USUARIO) REFERENCES USUARIOS (ID_USUARIO)
);
