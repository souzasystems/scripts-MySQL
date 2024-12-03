-- Verifica se o índice existe
SELECT COUNT(1)
  INTO @indexExists
  FROM information_schema.statistics 
 WHERE table_schema = DATABASE()
   AND table_name   = 'ESTADOS' 
   AND index_name   = 'idx_NOME_ESTADO';

-- Se o índice não existe, cria o índice
SET @sql := IF(@indexExists = 0, 'CREATE INDEX idx_NOME_ESTADO ON ESTADOS (NOME_ESTADO);', 'SELECT "ÍNDICE JÁ EXISTE.";');
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
