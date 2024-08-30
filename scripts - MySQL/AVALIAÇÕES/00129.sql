CREATE TABLE IF NOT EXISTS PARAMETROS (
    IdConfig TINYINT IDENTITY(01, 01) NOT NULL,
    UtilizaDistritos BIT DEFAULT 00,
    UtilizaZonas BIT DEFAULT 00,
    UtilizaLotes BIT DEFAULT 00,
    UtilizaQuadras BIT DEFAULT 00,
    UtilizaLoteamentos BIT DEFAULT 00,
    UtilizaCondominios BIT DEFAULT 00,
    UtilizaGrupos BIT DEFAULT 00,
    UtilizaSubGrupos BIT DEFAULT 00,
    ProdutoValorZero BIT DEFAULT 00,
    NomeDesenvolvedora VARCHAR(60) NULL,
    NumVersao CHAR(06) NULL,
    NumHash VARCHAR(MAX) NULL,
    CONSTRAINT PK_Config PRIMARY KEY(IdConfig)
);





























CREATE TABLE IF NOT EXISTS PARAMETROS (
  codigo                   NUMBER(20) not null,
  nome                     VARCHAR2(50) not null,
  valor                    VARCHAR2(4000),
  titulo                   VARCHAR2(255) not null,
  tipo                     CHAR(2) default 0 not null,
  descricao                VARCHAR2(1024),
  cod_category             NUMBER(20) not null,
  cod_acesso               NUMBER(20),
  tabela_origem            VARCHAR2(255),
  campo_pk                 VARCHAR2(30),
  campos_visualizados      VARCHAR2(1024),
  filtro_sql               VARCHAR2(1024),
  valores_possiveis        VARCHAR2(2048),
  valor_padrao             VARCHAR2(4000),
  campo_desc               VARCHAR2(30),
  valor_desc               VARCHAR2(1024),
  visivel                  VARCHAR2(1),
  obrigatorio              CHAR(1) default '0',
)
nologging;
-- Add comments to the columns 
comment on column IM_FAC_PARAM.codigo
  is 'Identificador único para o registro';
comment on column IM_FAC_PARAM.nome
  is 'Nome do parâmetro (Seguir padrão de nomenclatura utilizado para os campos das tabelas "PARAM" e "PARAMNOVOS". Ex.: BUSCAR_APENAS_TAB_VIGENTE).';
comment on column IM_FAC_PARAM.valor
  is 'Valor do parâmetro';
comment on column IM_FAC_PARAM.titulo
  is 'Título (Caption) do parâmetro, forma como será apresentado ao usuário.';
comment on column IM_FAC_PARAM.tipo
  is 'Tipo do parâmetro: String, Number, Date, Hour, Currency, List, DataBase, Boolean,

DateRange, NumberRange, ValueRange, OpenFile, OpenDirectory, Memo';
comment on column IM_FAC_PARAM.descricao
  is 'Descrição do campo (Utilizado como "hint")';
comment on column IM_FAC_PARAM.cod_category
  is 'Chave estrangeira ligada à Categoria do Parâmetro';
comment on column IM_FAC_PARAM.cod_acesso
  is 'Código do direito de acesso ao parâmetro';
comment on column IM_FAC_PARAM.tabela_origem
  is 'Tabela de onde os valores serão buscados (Tipo parâmetro = DataBase).';
comment on column IM_FAC_PARAM.campo_pk
  is 'Campo único da tabela origem (Tipo parâmetro = DataBase).';
comment on column IM_FAC_PARAM.campos_visualizados
  is 'Lista dos campos visualizados na pesquisa (Tipo parâmetro = DataBase).';
comment on column IM_FAC_PARAM.filtro_sql
  is 'Filtro utilizado para a pesquisa (Tipo parâmetro = DataBase).';
comment on column IM_FAC_PARAM.valores_possiveis
  is 'Lista de possíveis valores listados em um comboBox (Tipo parâmetro = List).';
comment on column IM_FAC_PARAM.valor_padrao
  is 'Deprecated';
comment on column IM_FAC_PARAM.campo_desc
  is 'Campo utilizado para a descrição (Propriedade LinkField do ComboF; Tipo parâmetro = DataBase).';
comment on column IM_FAC_PARAM.valor_desc
  is 'Valor descritivo do parâmetro (Propriedade LinkField do ComboF; Tipo parâmetro = DataBase).';
comment on column IM_FAC_PARAM.visivel
  is 'Informa se o parâmetro está visível para edição. 0 - FALSE 1 - TRUE ';
comment on column IM_FAC_PARAM.obrigatorio
  is 'Informa se o parâmetro é de preenchimento obrigatório quando disponível para edição.';
comment on column IM_FAC_PARAM.parametro_geral
  is 'Configuração geral do sistema';
comment on column IM_FAC_PARAM.parametro_profissional
  is 'Configuração para profissional';
comment on column IM_FAC_PARAM.parametro_laboratorio
  is 'Configuração para laboratório';
comment on column IM_FAC_PARAM.parametro_hospital
  is 'Configuração para hospital';
comment on column IM_FAC_PARAM.parametro_empresa_medica
  is 'Configuração para empresa médica';
comment on column IM_FAC_PARAM.parametro_empresa
  is 'Configuração para empresa';
comment on column IM_FAC_PARAM.parametro_unidade
  is 'Configuração para Unidade de Empresa';
comment on column IM_FAC_PARAM.parametro_plano
  is 'Configuração para Plano';
comment on column IM_FAC_PARAM.parametro_aditivo
  is 'Configuração para Aditivo';
comment on column IM_FAC_PARAM.parametro_usuario
  is 'Configuração de Parâmetro para Usuário FacPlan';
comment on column IM_FAC_PARAM.parametro_carencia
  is 'Configuração de Parâmetro para Carência';
comment on column IM_FAC_PARAM.parametro_beneficiario
  is 'Configuração de Parâmetro para Beneficiário';
