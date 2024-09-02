DROP VIEW IF EXISTS vw_ZONAS_TIPOS_ZONA;

DELIMITER //

CREATE VIEW vw_ZONAS_TIPOS_ZONA AS
   SELECT ZONAS.ID_ZONA,
          ZONAS.ID_TIPO_ZONA,
          ZONAS.DESCRICAO_ZONA,
          ZONAS.INATIVA,
          ZONAS.AREA_MINIMA,
          ZONAS.TESTADA_MINIMA,
          ZONAS.COMPLEMENTO_AREA_MINIMA,
          ZONAS.IDENTIFICADOR_ZONA,
          TIPOS_ZONA.DESCRICAO_TIPO_ZONA
     FROM ZONAS
    INNER JOIN TIPOS_ZONA
	   ON TIPOS_ZONA.ID_TIPO_ZONA = ZONAS.ID_TIPO_ZONA//

DELIMITER ;