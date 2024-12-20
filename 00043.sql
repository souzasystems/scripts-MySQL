DROP VIEW IF EXISTS vw_INFORMACOES_PESSOAS;

DELIMITER //

CREATE VIEW vw_INFORMACOES_PESSOAS AS
    SELECT PESSOAS.ID_PESSOA,
           PESSOAS.ATIVO,
           PESSOAS.DATA_CADASTRO,
           PESSOAS.E_MAIL,
           PESSOAS_FISICAS.ID_ESTADO_CIVIL,
           PESSOAS_FISICAS.ID_CIDADE,
           PESSOAS_FISICAS.NOME,
           PESSOAS_FISICAS.NOME_PAI,
           PESSOAS_FISICAS.NOME_MAE,
           PESSOAS_FISICAS.IDENTIDADE,
           PESSOAS_FISICAS.CPF,
           PESSOAS_FISICAS.SEXO,
           PESSOAS_FISICAS.DATA_NASCIMENTO,
           PESSOAS_JURIDICAS.CNPJ,
           PESSOAS_JURIDICAS.RAZAO_SOCIAL,
           PESSOAS_JURIDICAS.INSCRICAO_MUNICIPAL,
           PESSOAS_JURIDICAS.INSCRICAO_ESTADUAL,
           PESSOAS_JURIDICAS.NOME_FANTASIA,
           PESSOAS_JURIDICAS.DATA_FUNDACAO,
           DADOS_BANCARIOS_PESSOAS.ID_BANCO,
           DADOS_BANCARIOS_PESSOAS.NUM_AGENCIA,
           DADOS_BANCARIOS_PESSOAS.DIG_VERIF_AGENCIA,
           DADOS_BANCARIOS_PESSOAS.CONTA,
           DADOS_BANCARIOS_PESSOAS.DIG_VERIF_CONTA,
           DADOS_BANCARIOS_PESSOAS.TIPO_PAGTO_BANCARIO,
           DADOS_BANCARIOS_PESSOAS.TIPO_TRANS_PIX,
           DADOS_BANCARIOS_PESSOAS.TIPO_CHAVE_PIX,
           DADOS_BANCARIOS_PESSOAS.CHAVE_PIX
      FROM PESSOAS
      LEFT JOIN PESSOAS_FISICAS
        ON PESSOAS_FISICAS.ID_PESSOA = PESSOAS.ID_PESSOA
      LEFT JOIN PESSOAS_JURIDICAS
        ON PESSOAS_JURIDICAS.ID_PESSOA = PESSOAS.ID_PESSOA
      LEFT JOIN DADOS_BANCARIOS_PESSOAS
        ON DADOS_BANCARIOS_PESSOAS.ID_PESSOA = PESSOAS.ID_PESSOA//

DELIMITER ;